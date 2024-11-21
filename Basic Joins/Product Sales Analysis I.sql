# Write your MySQL query statement below
SELECT Product.product_name,Sales.year,Sales.price FROM Sales
join product on Sales.product_id = Product.product_id;