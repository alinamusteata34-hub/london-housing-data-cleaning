# 🏠 London House Price Data — Data Cleaning & SQL Analysis

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-2.0%2B-150458?logo=pandas)
![BigQuery](https://img.shields.io/badge/BigQuery-Google%20Cloud-4285F4?logo=googlecloud)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen)
![Dataset](https://img.shields.io/badge/Dataset-418K%20rows-orange)

A professional data cleaning pipeline and SQL analysis project applied to a large UK housing dataset containing 418,000+ property records across London from 1995 to 2024.

---

## 📌 Project Overview

This project demonstrates two core Data Analyst skills:
1. **Data Cleaning** — Python/pandas pipeline cleaning 418K rows of messy housing data
2. **SQL Analysis** — BigQuery queries uncovering London housing market insights

**Dataset:** [London House Price Data — Kaggle](https://www.kaggle.com/datasets/jakewright/house-price-data)  
**Records:** 418,000+ transactions  
**Period:** 1995–2024

---

## 📁 Project Structure

```
london-housing-data-cleaning/
│
├── data/
│   ├── raw/                                  # Original Kaggle download
│   └── cleaned/                              # Output after cleaning
│
├── notebooks/
│   └── london_house_price_cleaning.ipynb    # Main cleaning notebook
│
├── sql_queries/
│   ├── 01_top_20_expensive_outcodes.sql     # Most expensive London areas
│   ├── 02_price_by_property_type.sql        # Prices by property type
│   └── 03_price_trends_by_year.sql          # Price trends 1995-2024
│
├── .gitignore
├── requirements.txt
└── README.md
```

---

## 🔍 Data Quality Issues Addressed

| Issue | Approach |
|-------|----------|
| Missing values in numeric columns | Imputed with column median |
| Missing values in categorical columns | Filled with mode or "Unknown" |
| Price stored as string with £ symbol | Stripped and converted to float |
| Inconsistent postcode formatting | Uppercased, normalised, district extracted |
| Property type stored as single letter codes | Mapped to full readable labels |
| Date columns stored as strings | Parsed to datetime |
| Outliers in price column | IQR detection, winsorisation capping |
| Duplicate records | Identified and removed |

---

## 📊 SQL Analysis — Key Findings

### Top 5 Most Expensive London Outcodes
| Outcode | Area | Avg Sale Price | Avg Rent/month |
|---------|------|---------------|----------------|
| SW1X | Knightsbridge/Belgravia | £3,706,134 | £14,972 |
| W1S | Mayfair | £2,865,462 | £8,655 |
| W1K | Mayfair | £2,775,120 | £9,885 |
| W8 | Kensington | £2,710,699 | £10,382 |

### Price by Property Type
| Property Type | Avg Sale Price | Avg Rent/month |
|---------------|---------------|----------------|
| Detached Property | £2,371,072 | £9,370 |
| Detached House | £2,027,652 | £7,658 |
| Mid Terrace | £1,701,450 | £6,468 |
| Terraced | £1,658,496 | £6,378 |

---

## 🛠️ Tools & Technologies

- **Python 3.10+** — pandas, numpy, matplotlib, seaborn
- **Google BigQuery** — SQL analysis on cloud
- **Google Cloud Storage** — data storage
- **Jupyter Notebook** — cleaning pipeline
- **Git & GitHub** — version control

---

## 🚀 Getting Started

```bash
git clone https://github.com/alinamusteata34-hub/london-housing-data-cleaning.git
cd london-housing-data-cleaning
pip install -r requirements.txt
jupyter notebook notebooks/london_house_price_cleaning.ipynb
```
## 📊 Interactive Dashboard

Explore the live London Housing Market dashboard built in Google Looker Studio:

👉 **[View Live Dashboard](https://datastudio.google.com/s/qRcAXgYsDtk)**

The dashboard includes:
- 🏘️ Average sale price by London outcode
- 📈 Price trends from 1995 to 2024
- 🏠 Price breakdown by property type

### Preview

![Average sale price by outcode](assets/avg-price-by-outcode.png)
![Price trends 1995–2024](assets/price-trends.png)
![Price breakdown by property type](assets/price-by-type.png)
---

## 📬 Contact

**Alina Musteata**  
[LinkedIn](https://linkedin.com/in/yourprofile) · [GitHub](https://github.com/alinamusteata34-hub)

