# ==============================================================================
# Supabase Repositories Sync Script (sync_to_supabase.ps1) - Pure ASCII Safe Edition
# ==============================================================================

$envFile = Join-Path $PSScriptRoot ".env"
if (-not (Test-Path $envFile)) {
    Write-Error "Cannot find .env file."
    exit
}

# Parse .env securely without Regex or non-ASCII characters
$envVars = @{}
Get-Content $envFile | ForEach-Object {
    $line = $_.Trim()
    if ($line -and -not $line.StartsWith("#")) {
        $index = $line.IndexOf('=')
        if ($index -gt 0) {
            $key = $line.Substring(0, $index).Trim()
            $val = $line.Substring($index + 1).Trim()
            $envVars[$key] = $val
        }
    }
}

$supabaseUrl = $envVars["SUPABASE_URL"]
$supabaseKey = $envVars["SUPABASE_SERVICE_ROLE_KEY"]

if (-not $supabaseUrl -or -not $supabaseKey) {
    Write-Error "Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY in .env file."
    exit
}

# Fetch GitHub Data
$githubUser = "qwfwfiw1"
$githubApiUrl = "https://api.github.com/users/$githubUser/repos?per_page=100"

Write-Host "--> Fetching repositories from GitHub for user [$githubUser]..." -ForegroundColor Cyan

$ghHeaders = @{
    "User-Agent" = "PowerShell-Supabase-Sync"
}

try {
    $repos = Invoke-RestMethod -Uri $githubApiUrl -Headers $ghHeaders -Method Get
    Write-Host "--> Successfully fetched $($repos.Count) repositories!" -ForegroundColor Green
} catch {
    Write-Error "GitHub API Fetch failed: $_"
    exit
}

# Format Data
$formattedRepos = @()
foreach ($repo in $repos) {
    # Ensure description is null-safe
    $desc = $repo.description
    if ($null -eq $desc) { $desc = "" }

    $item = @{
        id               = [int64]$repo.id
        name             = $repo.name
        description      = $desc
        html_url         = $repo.html_url
        language         = $repo.language
        stargazers_count = [int]$repo.stargazers_count
        forks_count      = [int]$repo.forks_count
        created_at       = $repo.created_at
        updated_at       = $repo.updated_at
    }
    $formattedRepos += $item
}

# Send to Supabase Rest API (Upsert)
$supabaseRestUrl = "$supabaseUrl/rest/v1/repositories"
$body = $formattedRepos | ConvertTo-Json -Depth 5 -Compress

$sbHeaders = @{
    "apikey"        = $supabaseKey
    "Authorization" = "Bearer $supabaseKey"
    "Content-Type"  = "application/json"
    "Prefer"        = "resolution=merge-duplicates"
}

Write-Host "--> Upserting data to Supabase repositories table..." -ForegroundColor Cyan

try {
    $response = Invoke-WebRequest -Uri $supabaseRestUrl -Headers $sbHeaders -Method Post -Body $body -UseBasicParsing
    if ($response.StatusCode -eq 201 -or $response.StatusCode -eq 200 -or $response.StatusCode -eq 204) {
        Write-Host "--> SUCCESS: All repositories have been sync'd to Supabase database!" -ForegroundColor Green
    } else {
        Write-Host "--> WARNING: HTTP Code $($response.StatusCode)" -ForegroundColor Yellow
    }
} catch {
    Write-Error "Supabase Sync failed: $_"
    if ($_.Exception.Response) {
        $reader = New-Object System.IO.StreamReader($_.Exception.Response.GetResponseStream())
        $errBody = $reader.ReadToEnd()
        Write-Host "Error Details: $errBody" -ForegroundColor Red
    }
}
