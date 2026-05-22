# Agentic Portfolio - GitHub 儲存庫精美介紹網頁

本專案是一個為 GitHub 使用者 `qwfwfiw1` 精心打造的個人化介紹首頁與儲存庫展示網頁。採用現代極致美學設計，透過動態接軌 GitHub REST API，實現免手動更新的即時專案展示！

## ✨ 專案特色

* 🌌 **極致美學設計**：採用深色/淺色主題一鍵切換，融合現代毛玻璃（Glassmorphism）卡片、精美漸層色、滑鼠懸停霓虹微動畫。
* ⚡ **動態資料同步**：無任何寫死的儲存庫資料。前端在載入時透過 JavaScript 直接請求 GitHub 官方 API，確保您的每一次 Repo 變動都能即時反映在首頁上。
* 🦴 **科技感骨架屏 (Skeleton Screen)**：載入過程中提供精美骨架屏，載入完成後卡片優雅淡入，提供 Wow 等級的流暢體驗。
* 🔍 **即時搜尋與排序**：支援快速關鍵字搜尋，以及依 Star 數、更新時間、專案名稱進行多重排序。
* 🏷️ **語言智能分類**：自動偵測您擁有的所有程式語言，並產生活動標籤。可一鍵點擊以程式語言過濾專案，附帶 GitHub 官方語言色標。
* 📱 **完美響應式佈局**：在手機、平板與電腦上均有頂級的視覺呈現。

## 🚀 部署與瀏覽指引

本專案已上傳至 [qwfwfiw1/AgentCoding](https://github.com/qwfwfiw1/AgentCoding) 儲存庫中，並透過 GitHub Pages 進行託管。

### 啟用 GitHub Pages 步驟：
1. 前往您在 GitHub 上的儲存庫設定頁面：`https://github.com/qwfwfiw1/AgentCoding/settings/pages`
2. 在 **Build and deployment** 區塊下的 **Source**，確保選擇 `Deploy from a branch`。
3. 在 **Branch** 下拉選單中，選擇 **`main`**，目錄選擇 **`/ (root)`**。
4. 點擊 **Save**。
5. 稍等約 1~2 分鐘，GitHub Actions 完成部署後，即可透過以下網址瀏覽您的專案介紹首頁：
   👉 **[https://qwfwfiw1.github.io/AgentCoding/](https://qwfwfiw1.github.io/AgentCoding/)**

## 🛠️ 開發技術

* **結構**：HTML5 語義化標籤。
* **樣式**：純 CSS3，整合 Google Fonts (Outfit & Inter) 與 Lucide 圖示庫。
* **邏輯**：原生 JavaScript (ES6+)，使用 `fetch` 異步載入 API。
