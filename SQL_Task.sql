CREATE DATABASE `store_sales`;
USE `store_sales`;

CREATE TABLE SALES(
SALE_ID INT NOT NULL,
PRODUCT_ID INT NOT NULL,
CUSTOMER_ID INT NOT NULL,
SALES_DATE DATE,
AMOUNT INT NOT NULL
);

INSERT INTO SALES (SALE_ID, PRODUCT_ID, CUSTOMER_ID, SALES_DATE, AMOUNT)
VALUES
(10420, 1020, 4420, '2020-04-05', 2000),
(10421,1080, 4678, '2020-04-07', 100),
(10422,1020, 5100, '2020-04-12',500),
(10423,1140, 4678, '2020-04-15',7000),
(10424, 1020, 4420, '2020-04-20', 400),
(10425, 1020, 4678, '2020-05-01', 300),
(10426,1050, 3220, '2020-05-03', 1000),
(10427,1050, 4678, '2020-05-07', 500),
(10428,1140, 4710, '2020-05-04', 700),
(10429,1080, 4710, '2020-05-21', 600),
(10430,1140, 4220, '2020-06-06', 150),
(10430,1020, 4710, '2020-06-07', 300),
(10431,1050, 3220, '2020-06-10', 700),
(10432,1080, 3110, '2020-06-15', 3000),
(10433,1140, 4710,  '2020-04-20', 5000),
(10434,1020, 4710, '2020-05-03', 1000),
(10435,1140, 4678, '2020-06-13', 120),
(10436,1020, 5100, '2020-04-03', 900),
(10437,1080, 4678, '2020-06-28', 450),
(10438,1050, 3220, '2020-05-10', 600),
(10439,1050, 4710, '2020-05-17', 300),
(10440,1140, 4678, '2020-05-04', 200);


SELECT * 
FROM SALES;
-- CUSTOMERS WHO MADE MORE THAN 5 PURCHASES
SELECT  CUSTOMER_ID, COUNT(PRODUCT_ID) AS TOTAL_PRODUCTS
FROM SALES
group by CUSTOMER_ID
HAVING TOTAL_PRODUCTS >= 5
;

-- TOTA SALES FOR EACH PRODUCT
SELECT PRODUCT_ID, SUM(AMOUNT)
FROM SALES
GROUP BY PRODUCT_ID;

-- TOTAL SALES PER MONTH
SELECT date_format(SALES_DATE,'%M') AS MONTH, SUM(AMOUNT) AS TOTAL_SALES
FROM SALES
GROUP BY MONTH;



