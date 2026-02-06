Total revenue 
SELECT SUM(price*quantity) AS total_sales
FROM cafe;

Sales revenue by channel

SELECT `channel`, SUM(quantity*price) AS revenue_by_channel
FROM `cafe`
GROUP BY `channel`;

or 

SELECT SUM(price*quantity) AS total_sales
FROM cafe
WHERE `channel`= "offline";

SELECT SUM(price*quantity) AS total_sales
FROM cafe
WHERE `channel`= "online";

Top profitable products
SELECT product, SUM(quantity) AS total_sold
FROM `cafe`
GROUP BY `product`
ORDER BY total_sold DESC;

Revenue analysis by Customer type
SELECT customer_type, SUM(quantity*price) AS revenue
FROM `cafe`
GROUP BY `customer_type`
ORDER BY revenue DESC;

Revenue by product
SELECT product, SUM(price*quantity) AS total_revenue_by_product
FROM cafe
GROUP BY product;