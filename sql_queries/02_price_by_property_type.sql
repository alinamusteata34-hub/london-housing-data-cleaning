-- ============================================
-- Query 2: Average Price by Property Type
-- Author: Alina Musteata
-- Dataset: london_housing.house_prices
-- Description: Compares average sale price,
-- rent, bedrooms and floor area across all
-- London property types.
-- ============================================

SELECT 
  propertyType,
  ROUND(AVG(saleEstimate_currentPrice), 0)  AS avg_sale_price,
  ROUND(AVG(rentEstimate_currentPrice), 0)  AS avg_rent_pcm,
  ROUND(AVG(bedrooms), 1)                   AS avg_bedrooms,
  ROUND(AVG(floorAreaSqM), 0)               AS avg_floor_sqm,
  COUNT(*)                                   AS total_properties
FROM `project-fa3adcac-f45d-4c3d-b96.london_housing.house_prices`
GROUP BY propertyType
ORDER BY avg_sale_price DESC;

-- Key Findings:
-- Detached Property: £2,371,072 avg | £9,370 avg rent
-- Detached House:    £2,027,652 avg | £7,658 avg rent
-- Mid Terrace:       £1,701,450 avg | £6,468 avg rent
-- Terraced:          £1,658,496 avg | £6,378 avg rent
