# Agentic Portfolio - GitHub 儲存庫精美介紹網頁

本專案是一個為 GitHub 使用者 `qwfwfiw1` 精心打造的個人化介紹首頁與儲存庫展示網頁。採用頂級 UI/UX 美學設計，透過動態串接 GitHub REST API，實現免手動更新的即時專案展示！

我們提供兩種極致風格的網頁，可在右上角無縫互相切換瀏覽：

1. **🌌 經典款 (index.html)**：現代極致毛玻璃效果（Glassmorphism），搭配霓虹發光漸層與優雅微動畫。
2. **🧱 PRO MAX 款 (index1.html)**：基於 `ui-ux-pro-max-skill` 設計智庫打造的 **Minecraft（我的世界）像素風網頁**！立體背包 Inventory 面板、紅心血量條（代指粉絲）、麥穗飢餓度（代指追隨）、XP 經驗等級條（代指倉庫數）、黃色 Splash 閃爍標題，並整合了**互動式本機檔案目錄樹與物品屬性 Tooltip 框**！

---

## ✨ 專案特色

* 🎨 **UI/UX 頂級美學**：
  * **經典版**：玻璃透光卡片，溫潤和諧的 HSL 色彩，平滑漸變。
  * **PRO MAX 像素版**：完美還原 Minecraft 背包與箱子立體灰面板、灰色立體像素按鈕（按壓下沉、懸停黃字）。黃色 Splash 斜角文字不斷進行呼吸式跳動！
* 💖 **遊戲化數據 HUD**：將冷冰冰的數據轉換為玩家熟悉的界面：
  * **倉庫數** ➔ **XP 經驗值等級**（炫目綠色進度條與黃綠色 Level 數字）。
  * **粉絲數** ➔ **紅心血量條**（心形會進行縮放跳動！）。
  * **追隨數** ➔ **麥穗飽食度**。
* 📂 **互動式本機專案目錄樹**：右側欄完美展現本儲存庫的檔案系統結構：
  * 支援點擊目錄樹檔案（如 `index.html`、`README.md`、`ui-ux-pro-max-skill` 等）。
  * 動態彈出**深紫色立體浮雕邊框的 Minecraft Item Tooltip 框**，用 § 經典色彩標記與附魔屬性詳細介紹本機檔案的開發目的與設計細節！
* ⚡ **動態資料同步**：前端直接請求 GitHub REST API，動態抓取您的個人頭像、姓名、Bio、統計資料與所有公開儲存庫專案。
* 🦴 **個性化骨架屏 (Skeleton Screen)**：載入過程中提供專屬風格骨架屏（經典版為科技微亮漸層；PRO MAX 版為經典基岩/黑曜石虛線骨架屏），載入後優雅淡入。
* 🔍 **即時搜尋與多重排序**：支援快速關鍵字即時檢索，以及依 Star 數、更新時間、名稱進行多重排序。
* 📱 **完美響應式佈局**：在手機、平板與電腦上均有頂級的視覺呈現。

---

## 🚀 部署與瀏覽指引

本專案已成功部署於 [qwfwfiw1/Agentic-Coding](https://github.com/qwfwfiw1/Agentic-Coding) 儲存庫中，並透過 GitHub Pages 進行託管。

### 🔗 線上瀏覽連結：
* 👉 **[經典毛玻璃首頁 (index.html)](https://qwfwfiw1.github.io/Agentic-Coding/index.html)**
* 👉 **[UI/UX PRO MAX Minecraft 像素首頁 (index1.html)](https://qwfwfiw1.github.io/Agentic-Coding/index1.html)**

---

## 🛠️ 開發技術

* **設計規範**：基於 `nextlevelbuilder/ui-ux-pro-max-skill` 的 `Pixel Art` 設計方針
* **字體搭配**：Google Fonts - `Press Start 2P` 與 `VT323` (像素專用)
* **結構**：HTML5 語義化標籤。
* **樣式**：純 CSS3，實現立體像素凹凸浮雕與點陣圖案背景。
* **邏輯**：原生 JavaScript (ES6+)，使用 `fetch` 異步載入 API，進行前端快取檢索。


