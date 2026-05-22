# Agentic Portfolio - GitHub 儲存庫精美介紹網頁

本專案是一個為 GitHub 使用者 `qwfwfiw1` 精心打造的個人化介紹首頁與儲存庫展示網頁。採用頂級 UI/UX 美學設計，透過動態串接與資料庫直連，實現免手動更新的即時專案展示！

我們提供四種極致風格的網頁，可在右上角無縫互相切換瀏覽：

1. **🌌 經典款 (index.html)**：現代極致毛玻璃效果（Glassmorphism），搭配霓虹發光漸層與優雅微動畫。
2. **🧱 像素款 (index1.html)**：基於 `ui-ux-pro-max-skill` 設計智庫打造的 **Minecraft（我的世界）像素風網頁**！立體背包 Inventory 面板、紅心血量條（代指粉絲）、麥穗飢餓度（代指追隨）、XP 經驗等級條（代指倉庫數）、黃色 Splash 閃爍標題，並整合了互動式本機檔案目錄樹與物品屬性 Tooltip 框！
3. **💎 專業淺色款 (index2.html)**：採用 **Apple Style 淺色便當盒 (Light Bento Grid)** 結合極簡瑞士風格。背景使用溫潤的冷灰色，卡片使用純白色搭配 1px 超細的微灰色柔和邊框與微空氣感陰影。搭載了極致精細的本機專案目錄樹與 **SaaS 雲端文件閱讀器 (IDE Code Previewer)**！
4. **⚡ 資料庫動態款 (index3.html)**：採用 **Supabase 綠黑科技 Dashboard 風格**！前端直接透過 Supabase JS Client 直連 Supabase 的 SQL `repositories` 資料表。免除 GitHub API 頻率限制，達到百分之百動態載入！

---

## ✨ 專案特色

* 🎨 **UI/UX 頂級美學**：
  * **經典版**：玻璃透光卡片，溫潤和諧的 HSL 色彩，平滑漸變。
  * **像素版**：完美還原 Minecraft 背包箱子立體灰面板、立體像素按鈕，黃色 Splash 標題呼吸式跳動。
  * **專業淺色版**：極致簡約的冷灰色調、高雅留白與 Outfit+Inter 大廠字型排版，打造極具專業與現代感的科技風格。
  * **資料庫動態版**：Supabase 綠黑科技配色 (`#0c0c0d` 搭配 `#3ECF8E` 螢光綠霓虹線框)，極具駭客感與未來感。
* 📊 **多維數據 HUD / 儀表板**：
  * **經典版**：科技微亮漸層展示統計。
  * **像素版**：經驗值 XP 條（倉庫數）、紅心血條（粉絲數）、麥穗飽食度（追隨數）。
  * **專業淺色版**：以極簡 SaaS 儀表板 KPI 卡片呈現。
  * **資料庫動態版**：即時顯示 Supabase 資料庫連線狀態（亮綠色 Secure Online 徽章）與統計資料！
* 📂 **互動式本機專案目錄樹**：右側欄完美展現本儲存庫的檔案系統結構：
  * **像素版**：點擊檔案彈出深紫色立體浮雕邊框的 Minecraft Item Tooltip 框。
  * **專業淺色版** & **資料庫動態版**：點擊檔案後，右側會以一個極具高科技感的**「雲端文件預覽面板 (IDE Code Previewer)」**動態切換展現檔案詳情，具有極致高雅的排版設計！
* ⚡ **動態資料同步與資料庫託管**：
  * 使用原生、免安裝依賴的 **`sync_to_supabase.ps1`** 同步腳本，將您的 GitHub Repositories 資料 Upsert 儲存至 Supabase 雲端資料庫。
  * 前端 `index3.html` 透過 Supabase SDK 公開連線金鑰安全直連 SQL 讀取。
* 🦴 **個性化骨架屏 (Skeleton Screen)**：載入過程中提供專屬風格骨架屏（經典版為科技微亮漸層；像素版為基岩/黑曜石虛線骨架屏；專業淺色版與資料庫版為流光 Shimmer 骨架屏），載入後優雅淡入。
* 🔍 **即時搜尋與多重排序**：支援快速關鍵字即時檢索，以及依 Star 數、更新時間、名稱進行多重排序。
* 📱 **完美響應式佈局**：在手機、平板與電腦上均有頂級的視覺呈現。

---

## 🚀 部署與瀏覽指引

本專案已成功部署於 [qwfwfiw1/Agentic-Coding](https://github.com/qwfwfiw1/Agentic-Coding) 儲存庫中，並透過 GitHub Pages 進行託管。

### 🔗 線上瀏覽連結：
* 👉 **[經典毛玻璃首頁 (index.html)](https://qwfwfiw1.github.io/Agentic-Coding/index.html)**
* 👉 **[UI/UX PRO MAX Minecraft 像素首頁 (index1.html)](https://qwfwfiw1.github.io/Agentic-Coding/index1.html)**
* 👉 **[UI/UX PRO MAX 淺色專業便當盒首頁 (index2.html)](https://qwfwfiw1.github.io/Agentic-Coding/index2.html)**
* 👉 **[UI/UX PRO MAX Supabase 綠黑直連首頁 (index3.html)](https://qwfwfiw1.github.io/Agentic-Coding/index3.html)**

---

## 🛠️ 開發技術

* **設計規範**：基於 `nextlevelbuilder/ui-ux-pro-max-skill` 的設計方針
* **字體搭配**：Google Fonts - `Outfit`, `Inter` & `Press Start 2P`, `VT323`
* **結構**：HTML5 語義化標籤。
* **樣式**：純 CSS3，實現立體像素凹凸浮雕、毛玻璃濾鏡與冷灰白高質感流暢漸變。
* **邏輯**：原生 JavaScript (ES6+)，透過 `@supabase/supabase-js` 進行直連檢索。




