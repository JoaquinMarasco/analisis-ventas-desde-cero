-- 02_profit_by_subcategory.sql
-- Análisis: ganancia total por subcategoría
-- Objetivo: detectar productos más rentables
-- Dataset: Superstore

SELECT
    "Sub-Category",
    SUM(Profit) AS total_profit
FROM superstore
WHERE Category IS NOT NULL
GROUP BY "Sub-Category"
ORDER BY total_profit DESC;