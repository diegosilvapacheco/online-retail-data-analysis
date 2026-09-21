CREATE database online_retail;
USE online_retail;
-- drop database online_retail;

-- renomear tabela
ALTER TABLE synthetic_online_retail_data RENAME sales;
DESCRIBE sales;

SELECT * FROM sales;

-- PERGUNTAS DE NEGÓCIO
-- Qual foi o faturamento total acumulado no período analisado?
SELECT round(sum(price * quantity), 2) AS total_revenue
FROM sales;

-- Como o faturamento se comportou ao longo dos meses? Há sazonalidade evidente nas vendas?
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    ROUND(SUM(price * quantity), 2) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Quais categorias de produtos geraram a maior receita para a empresa?
SELECT category_name,
       round(sum(price * quantity), 2) AS revenue
FROM sales
GROUP BY category_name
ORDER BY revenue DESC;

-- Quais foram os 5 produtos com maior faturamento?
SELECT product_name,
       round(sum(price * quantity), 2) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;

-- Qual faixa etária apresentou maior participação na receita?
SELECT
    CASE
        WHEN age <= 25 THEN 'Até 25'
        WHEN age <= 35 THEN '26-35'
        WHEN age <= 45 THEN '36-45'
        WHEN age <= 55 THEN '46-55'
        WHEN age <= 65 THEN '56-65'
        ELSE '66+'
    END AS age_group,
    ROUND(SUM(price * quantity), 2) AS revenue
FROM sales
GROUP BY age_group
ORDER BY revenue DESC;

-- Qual foi a forma de pagamento mais utilizada pelos consumidores?
SELECT payment_method, 
       count(*) AS total,
       round(sum(price * quantity) / (SELECT sum(price * quantity) FROM sales), 2) AS revenue_percentage       
FROM sales
GROUP BY payment_method;

-- Faturamento médio por cidade
SELECT round(sum(price * quantity) / count(distinct city), 2) AS revenue FROM sales;