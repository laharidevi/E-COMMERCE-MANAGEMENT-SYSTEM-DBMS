--E-COMMERCE ORDER MANAGEMENT SYSTEM
-- ORACLE SQL QUERIES

-- 1. DISPLAY ALL CUSTOMERS,

SELECT *
FROM Customer;

-- 2. DISPLAY PRODUCTS WITH PRICE ABOVE 1000

SELECT *
FROM Product
WHERE Price > 1000;

-- 3. DISPLAY ORDERS IN DESCENDING ORDER OF DATE


SELECT *
FROM Orders
ORDER BY Order_Date DESC;

-- 4. DISPLAY DISTINCT ORDER STATUSES

SELECT DISTINCT Order_Status
FROM Orders;

-- 5. DISPLAY PRODUCTS WITH STOCK BELOW 40

SELECT *
FROM Product
WHERE Stock_Quantity < 40;

-- 6. INNER JOIN - CUSTOMER AND ORDERS

SELECT
    c.Customer_ID,
    c.Name,
    o.Order_ID,
    o.Order_Date,
    o.Order_Status,
    o.Total_Amount
FROM Customer c
INNER JOIN Orders o
    ON c.Customer_ID = o.Customer_ID;

-- 7. INNER JOIN - PRODUCTS AND CATEGORIES

SELECT
    p.Product_ID,
    p.Product_Name,
    p.Price,
    c.Category_Name
FROM Product p
INNER JOIN Category c
    ON p.Category_ID = c.Category_ID;

-- 8. JOIN - ORDER ITEMS WITH PRODUCT DETAILS

SELECT
    oi.Order_Item_ID,
    oi.Order_ID,
    p.Product_Name,
    oi.Quantity,
    oi.Unit_Price
FROM Order_Item oi
INNER JOIN Product p
    ON oi.Product_ID = p.Product_ID;

-- 9. LEFT JOIN - ALL CUSTOMERS AND THEIR ORDERS

SELECT
    c.Customer_ID,
    c.Name,
    o.Order_ID,
    o.Order_Date,
    o.Order_Status
FROM Customer c
LEFT JOIN Orders o
    ON c.Customer_ID = o.Customer_ID;

-- 10. RIGHT JOIN - ALL ORDERS AND CUSTOMER DETAILS

SELECT
    c.Name,
    o.Order_ID,
    o.Order_Date,
    o.Total_Amount
FROM Customer c
RIGHT JOIN Orders o
    ON c.Customer_ID = o.Customer_ID;

-- 11. FULL OUTER JOIN - CUSTOMERS AND ORDERS

SELECT
    c.Customer_ID,
    c.Name,
    o.Order_ID,
    o.Order_Date
FROM Customer c
FULL OUTER JOIN Orders o
    ON c.Customer_ID = o.Customer_ID;

-- 12. COUNT TOTAL NUMBER OF ORDERS

SELECT COUNT(*) AS Total_Orders
FROM Orders;

-- 13. CALCULATE TOTAL REVENUE

SELECT SUM(Total_Amount) AS Total_Revenue
FROM Orders
WHERE Order_Status <> 'Cancelled';

-- 14. FIND AVERAGE PRODUCT PRICE

SELECT AVG(Price) AS Average_Product_Price
FROM Product;

-- 15. COUNT PRODUCTS IN EACH CATEGORY

SELECT
    Category_ID,
    COUNT(*) AS Product_Count
FROM Product
GROUP BY Category_ID;

-- 16. CUSTOMERS HAVING MORE THAN ONE ORDER

SELECT
    Customer_ID,
    COUNT(*) AS Order_Count
FROM Orders
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

-- 17. PRODUCTS ABOVE AVERAGE PRICE

SELECT
    Product_ID,
    Product_Name,
    Price
FROM Product
WHERE Price > (
    SELECT AVG(Price)
    FROM Product
);

-- 18. CUSTOMERS WHO HAVE DELIVERED ORDERS

SELECT DISTINCT
    c.Customer_ID,
    c.Name
FROM Customer c
INNER JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
WHERE o.Order_Status = 'Delivered';

-- 19. PRODUCTS THAT HAVE NEVER BEEN ORDERED

SELECT
    p.Product_ID,
    p.Product_Name
FROM Product p
WHERE NOT EXISTS (
    SELECT 1
    FROM Order_Item oi
    WHERE oi.Product_ID = p.Product_ID
);

-- 20. CUSTOMERS WHO HAVE AN ORDER ABOVE 1000

SELECT
    c.Customer_ID,
    c.Name
FROM Customer c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.Customer_ID = c.Customer_ID
      AND o.Total_Amount > 1000
);

-- 21. PRODUCTS ABOVE THEIR CATEGORY AVERAGE PRICE

SELECT
    p.Product_ID,
    p.Product_Name,
    p.Price,
    p.Category_ID
FROM Product p
WHERE p.Price > (
    SELECT AVG(p2.Price)
    FROM Product p2
    WHERE p2.Category_ID = p.Category_ID
);

-- 22. PENDING ORDERS VIEW

CREATE OR REPLACE VIEW Pending_Orders AS
SELECT
    Order_ID,
    Customer_ID,
    Order_Date,
    Order_Status,
    Total_Amount
FROM Orders
WHERE Order_Status = 'Pending';

-- Display Pending Orders

SELECT *
FROM Pending_Orders;

-- 23. CUSTOMER ORDER SUMMARY VIEW

CREATE OR REPLACE VIEW Customer_Order_Summary AS
SELECT
    c.Name,
    COUNT(o.Order_ID) AS Total_Orders,
    SUM(o.Total_Amount) AS Total_Spent
FROM Customer c
LEFT JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY c.Name;


-- Display Customer Order Summary

SELECT *
FROM Customer_Order_Summary;

-- 24. UNION - CUSTOMERS FROM DIFFERENT CONDITIONS

SELECT Name
FROM Customer
WHERE Address LIKE '%AP%'

UNION

SELECT Name
FROM Customer
WHERE Customer_ID IN (
    SELECT Customer_ID
    FROM Orders
    WHERE Order_Status = 'Delivered'
);

-- 25. INTERSECT - CUSTOMERS WITH PENDING AND SHIPPED ORDERS

SELECT Customer_ID
FROM Orders
WHERE Order_Status = 'Pending'

INTERSECT

SELECT Customer_ID
FROM Orders
WHERE Order_Status = 'Shipped';

-- 26. MINUS - CUSTOMERS WHO HAVE NOT PLACED ORDERS

SELECT Customer_ID
FROM Customer

MINUS

SELECT Customer_ID
FROM Orders;

-- 27. CUSTOMER-WISE ORDER DETAILS

SELECT
    c.Customer_ID,
    c.Name,
    o.Order_ID,
    o.Order_Date,
    o.Order_Status,
    o.Total_Amount
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
ORDER BY c.Customer_ID;

-- 28. PRODUCT PRICE AND STOCK DETAILS

SELECT
    Product_ID,
    Product_Name,
    Price,
    Stock_Quantity
FROM Product
ORDER BY Price DESC;

-- 29. ORDER STATUS SUMMARY

SELECT
    Order_Status,
    COUNT(*) AS Total_Orders,
    SUM(Total_Amount) AS Total_Amount
FROM Orders
GROUP BY Order_Status
ORDER BY Order_Status;

-- 30. CUSTOMER-WISE ORDER COUNT

SELECT
    c.Customer_ID,
    c.Name,
    COUNT(o.Order_ID) AS Order_Count
FROM Customer c
LEFT JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Name
ORDER BY c.Customer_ID;
