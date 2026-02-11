-- Master Sales Table Query
-- Menggabungkan data customers, orders, products, dan product_category
-- Menghitung total sales per transaksi

SELECT
  o.Date AS order_date,
  pc.CategoryName AS category_name,
  p.ProdName AS product_name,
  p.Price AS product_price,
  o.Quantity AS order_qty,
  o.Quantity * p.Price AS total_sales,
  c.CustomerEmail AS cust_email,
  c.CustomerCity AS cust_city
FROM `customer_analytics.orders` o
INNER JOIN `customer_analytics.customers` c
  ON o.CustomerID = c.CustomerID
INNER JOIN `customer_analytics.products` p
  ON o.ProdNumber = p.ProdNumber
INNER JOIN `customer_analytics.product_category` pc
  ON p.Category = pc.CategoryID
ORDER BY order_date ASC;
