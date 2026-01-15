-- 01_sales_by_category.sql
-- Análisis: ventas totales por categoría
-- Objetivo: identificar qué categoría genera mayor facturación
-- Dataset: Superstore (ventas históricas)

SELECT
    Category,
    SUM(Sales) AS total_sales
FROM superstore
WHERE Category IS NOT NULL
GROUP BY Category
ORDER BY total_sales DESC;

