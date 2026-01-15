-- 03_loss_making_products.sql
-- Análisis: subcategorías con pérdidas
-- Objetivo: identificar productos no rentables
-- Dataset: Superstore

SELECT
    "Sub-Category",
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY "Sub-Category"
HAVING total_profit < 0
ORDER BY total_profit;