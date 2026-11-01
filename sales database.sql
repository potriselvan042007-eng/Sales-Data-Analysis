USE sales_analysis;
SELECT*FROM sales;
SELECT COUNT(*) AS total_orders
FROM sales;
SELECT SUM(sales_amount) AS total_sales
FROM sales;
SELECT SUM(quantity) AS total_quantity
FROM sales;
SELECT AVG(sales_amount) AS average_sales
FROM sales;
SELECT
    product_category,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_category
ORDER BY total_sales DESC;
SELECT
    product_category,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product_category
ORDER BY total_profit DESC;
SELECT
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC;
SELECT
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT
    region,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
SELECT
    payment_method,
    COUNT(*) AS total_orders,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY payment_method
ORDER BY total_sales DESC;
SELECT
    YEAR(STR_TO_DATE(order_date, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')) AS month,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(order_date, '%m/%d/%Y'))
ORDER BY year, month;
SELECT
    return_flag,
    COUNT(*) AS total_orders
FROM sales
GROUP BY return_flag;
MySQL-ல்:
SELECT
    YEAR(STR_TO_DATE(order_date, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')) AS month,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(order_date, '%m/%d/%Y'))
ORDER BY year, month;
