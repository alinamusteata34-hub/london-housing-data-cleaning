-- ============================================
-- Query 1: Top 20 Most Expensive London Areas
-- Author: Alina Musteata
-- Dataset: london_housing.house_prices
-- Description: Identifies the top 20 London 
-- outcodes by average sale price, including
-- average rent, bedrooms and floor area.
-- ============================================

SELECT 
  outcode,
  ROUND(AVG(saleEstimate_currentPrice), 0)  AS avg_sale_price,
  ROUND(AVG(rentEstimate_currentPrice), 0)  AS avg_rent_pcm,
  ROUND(AVG(bedrooms), 1)                   AS avg_bedrooms,
  ROUND(AVG(floorAreaSqM), 0)               AS avg_floor_area_sqm,
  COUNT(*)                                   AS total_properties
FROM `project-fa3adcac-f45d-4c3d-b96.london_housing.house_prices`
GROUP BY outcode
ORDER BY avg_sale_price DESC
LIMIT 20;

-- Key Findings:
-- SW1X (Knightsbridge/Belgravia): £3,706,134 avg sale price
-- W1S (Mayfair): £2,865,462 avg sale price
-- W1K (Mayfair): £2,775,120 avg sale price
