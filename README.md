# 🏠 London House Price Data — Data Cleaning Project

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-2.0%2B-150458?logo=pandas)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen)
![Dataset](https://img.shields.io/badge/Dataset-100K%20rows-orange)

A professional data cleaning pipeline applied to a large UK housing dataset containing 100,000 sold property transactions across London from 1995 to 2024.

---

## 📌 Project Overview

Raw real-world datasets are rarely clean. This project demonstrates a structured, reproducible approach to cleaning a messy housing dataset — a core skill for any Data Analyst role.

**Dataset:** [London House Price Data — Kaggle](https://www.kaggle.com/datasets/jakewright/house-price-data)  
**Records:** ~100,000 transactions  
**Period:** 1995–2024

---

## 🔍 Data Quality Issues Addressed

| Issue | Approach |
|-------|----------|
| Missing values in numeric columns | Imputed with column median |
| Missing values in categorical columns | Filled with mode (<5% missing) or "Unknown" |
| Price stored as string with £ symbol | Stripped and converted to float |
| Inconsistent postcode formatting | Uppercased, normalised whitespace, extracted district |
| Property type stored as single letter codes | Mapped to full readable labels |
| Date columns stored as strings | Parsed to datetime |
| Outliers in price column | Detected via IQR; capped using winsorisation |
| Duplicate records | Identified and removed |

---

## 📁 Project Structure

```
london-housing-data-cleaning/
│
├── data/
│   ├── raw/
│   │   └── london_house_prices.csv          # Original Kaggle download
│   └── cleaned/
│       ├── london_house_prices_clean.csv    # Output after cleaning
│       ├── missing_values_plot.png          # Visualisation
│       └── price_distribution.png           # Before/after outlier plot
│
├── notebooks/
│   └── london_house_price_cleaning.ipynb   # Main cleaning notebook
│
├── requirements.txt
└── README.md
```

---

## 🛠️ Tools & Libraries

- **Python 3.10+**
- **pandas** — data manipulation
- **numpy** — numerical operations
- **matplotlib / seaborn** — visualisations

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/london-housing-data-cleaning.git
cd london-housing-data-cleaning
```

### 2. Install dependencies

```bash
pip install -r requirements.txt
```

### 3. Download the dataset

1. Go to [this Kaggle page](https://www.kaggle.com/datasets/jakewright/house-price-data)
2. Download the CSV
3. Place it at `data/raw/london_house_prices.csv`

### 4. Run the notebook

```bash
jupyter notebook notebooks/london_house_price_cleaning.ipynb
```

---

## 🧹 Cleaning Steps (Summary)

1. **Inspect** — shape, dtypes, missing values audit with visualisation
2. **Handle nulls** — strategy varies by column type and missing %
3. **Fix data types** — dates to datetime, prices to float
4. **Standardise postcodes** — consistent formatting + district extraction
5. **Standardise categories** — property type and tenure label mapping
6. **Outlier treatment** — IQR-based detection, winsorisation capping
7. **Deduplication** — remove exact duplicate rows
8. **Feature engineering** — extract year, month, quarter, decade from dates
9. **Export** — clean CSV saved to `data/cleaned/`

---

## 📊 Sample Output

After cleaning:
- ✅ Zero null values remaining
- ✅ All prices as numeric float
- ✅ Dates as proper datetime objects
- ✅ Postcodes standardised and district extracted
- ✅ Property types in readable full labels
- ✅ Outliers capped (not dropped) to preserve data volume

---

## 💼 Why This Project?

This project was built as part of a data analytics portfolio targeting London-based DA roles. The dataset is locally relevant, large enough to be realistic, and messy enough to showcase practical cleaning skills that directly translate to day-to-day analyst work.

---

## 📬 Contact

**[Your Name]**  
[LinkedIn](https://linkedin.com/in/yourprofile) · [GitHub](https://github.com/YOUR_USERNAME) · [Email](mailto:your@email.com)
