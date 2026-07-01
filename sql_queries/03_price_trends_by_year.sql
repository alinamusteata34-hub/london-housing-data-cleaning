-- ============================================
-- Query 3: London House Price Trends by Year
-- Author: Alina Musteata
-- Dataset: london_housing.house_prices
-- Description: Tracks average sale price and
-- rental estimates year-on-year from 1995
-- to present, showing London market trends.
-- ============================================

SELECT 
  EXTRACT(YEAR FROM history_date)           AS year,
  ROUND(AVG(saleEstimate_currentPrice), 0)  AS avg_sale_price,
  ROUND(AVG(rentEstimate_currentPrice), 0)  AS avg_rent_pcm,
  COUNT(*)                                   AS total_properties
FROM `project-fa3adcac-f45d-4c3d-b96.london_housing.house_prices`
WHERE history_date IS NOT NULL
GROUP BY year
ORDER BY year;

-- Key Findings:
-- 1995: £1,045,019 avg sale price | £4,114 avg rent
-- 1999: £950,474  avg sale price | £3,781 avg rent
-- Visualisation available in BigQuery Studio
-- showing full trend line from 1995 to present
