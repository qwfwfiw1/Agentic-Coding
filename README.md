# Agentic Portfolio - GitHub 儲存庫精美介紹網頁

本專案是一個為 GitHub 使用者 `qwfwfiw1` 精心打造的個人化介紹首頁與儲存庫展示網頁。採用頂級 UI/UX 美學設計，透過動態串接 GitHub REST API，實現免手動更新的即時專案展示！

我們提供兩種極致風格的網頁，可在右上角無縫互相切換瀏覽：

1. **🌌 經典款 (index.html)**：現代極致毛玻璃效果（Glassmorphism），搭配霓虹發光漸層與優雅微動畫。
2. **⚡ PRO MAX 款 (index1.html)**：基於 `ui-ux-pro-max-skill` 設計智庫打造的**新粗獷主義便當盒佈局 (Neo-Brutalism Bento Grid)**。高飽和度色彩拼塊、Space Grotesk 幾何字型、4px 粗黑實線框、8px 硬實心偏移陰影以及 Mechanical Press 機械式按壓動畫！

---

## ✨ 專案特色

* 🎨 **UI/UX 頂級美學**：
  * **經典版**：玻璃透光卡片，溫潤和諧的 HSL 色彩，平滑漸變。
  * **PRO MAX 版**：奶油白畫布底色，大膽的紫、黃、紅、藍綠拼色，4px 粗黑邊框與硬陰影。具備機械式按壓（Mechanical Press）滑鼠懸停下沉動畫，反骨且具備極強的設計張力。
* ⚡ **動態資料同步**：前端直接請求 GitHub REST API，動態抓取您的個人頭像、姓名、Bio、統計資料（倉庫數、Gists、粉絲數）與所有公開儲存庫專案。未來新增專案會自動更新！
* 🦴 **個性化骨架屏 (Skeleton Screen)**：載入過程中提供專屬風格骨架屏（經典版為科技微亮漸層；PRO MAX 版為粗獷主義條紋虛線跳躍動畫），載入後優雅淡入。
* 🔍 **即時搜尋與多重排序**：支援快速關鍵字即時檢索，以及依 Star 數、更新時間、名稱進行多重排序。
* 🏷️ **語言智能分類**：自動提取所有不重複的程式語言，並配上 GitHub 官方語言色標。可一鍵點擊以程式語言過濾專案。
* 📱 **完美響應式佈局**：在手機、平板與電腦上均有頂級的視覺呈現。

---

## 🚀 部署與瀏覽指引

本專案已成功部署於 [qwfwfiw1/Agentic-Coding](https://github.com/qwfwfiw1/Agentic-Coding) 儲存庫中，並透過 GitHub Pages 進行託管。

### 🔗 線上瀏覽連結：
* 👉 **[經典毛玻璃首頁 (index.html)](https://qwfwfiw1.github.io/Agentic-Coding/index.html)**
* 👉 **[UI/UX PRO MAX 新粗獷首頁 (index1.html)](https://qwfwfiw1.github.io/Agentic-Coding/index1.html)**

---

## 🛠️ 開發技術

* **設計規範**：基於 `nextlevelbuilder/ui-ux-pro-max-skill`
* **結構**：HTML5 語義化標籤。
* **樣式**：純 CSS3，整合 Google Fonts (Outfit, Inter & Space Grotesk) 與 Lucide 圖示庫。
* **邏輯**：原生 JavaScript (ES6+)，使用 `fetch` 異步載入 API，進行前端快取檢索。

