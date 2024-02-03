CREATE DATABASE mobile;
USE mobile;
SET AUTOCOMMIT = OFF;
COMMIT;

CREATE VIEW mobile_features AS SELECT * FROM mobile_info;

-- 1.  Check mobile features and price list
SELECT * FROM mobile_info;

-- 2.  Find out the price of 5 most expensive phones
SELECT Phone_name, Price
FROM mobile_info
ORDER BY Price DESC
LIMIT 5;

-- 3. Find out the price of 5 most cheapest phones
SELECT Phone_name, Price
FROM mobile_info
ORDER BY Price 
LIMIT 5;

-- 4. List of top 5 Samsung phones with price and all features
SELECT *
FROM mobile_info
WHERE Phone_name LIKE 'Samsung%'
ORDER BY Price DESC
LIMIT 5;

-- 5. Must have android phone list then top 5 High price android phones
SELECT *
FROM mobile_info
WHERE Operating_System_Type LIKE 'A%'
ORDER BY Price DESC
LIMIT 5;

-- 6.  Must have android phone list then top 5 Lower price android phones
SELECT *
FROM mobile_info
WHERE Operating_System_Type LIKE 'A%'
ORDER BY Price 
LIMIT 5;

-- 7. Must have IOS phone list then top 5 High price IOS phones
SELECT *
FROM mobile_info
WHERE Operating_System_Type LIKE 'I%'
ORDER BY Price DESC
LIMIT 5;

-- 8. Must have IOS phone list then top 5 Lower price IOS phones
SELECT *
FROM mobile_info
WHERE Operating_System_Type LIKE 'I%'
ORDER BY Price 
LIMIT 5;

-- 9. Write a query which phone support 5G and also Top5 phones with 5G support
SELECT *
FROM mobile_info
WHERE 5G_Availability LIKE 'Yes'
ORDER BY Price DESC
LIMIT 5;

-- 10. Total price of all mobile is to be found with brand name
SELECT Brands, SUM(Price) AS total_rice 
FROM mobile_info
GROUP BY Brands;

-- END -- 