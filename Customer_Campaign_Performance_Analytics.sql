CREATE DATABASE campaign_analytics;

USE campaign_analytics;
CREATE TABLE campaign_data (

Customer_ID INT,
Age INT,
Gender VARCHAR(20),
Income INT,
Region VARCHAR(20),
Tenure INT,
Product_Count INT,
Digital_User VARCHAR(10),

Campaign_ID INT,
Campaign_Type VARCHAR(50),
Channel VARCHAR(50),
Budget INT,

Opened INT,
Clicked INT,
Converted INT,

Revenue INT

);

select *
from campaign_data;

SELECT COUNT(*)
FROM campaign_data;

SELECT
COUNT(*) AS Targeted,
SUM(Opened) AS Opened,
SUM(Clicked) AS Clicked,
SUM(Converted) AS Converted,
SUM(Revenue) AS Revenue
FROM campaign_data;

SELECT
Campaign_Type,
COUNT(*) Customers,
SUM(Converted) Conversions,
SUM(Revenue) Revenue
FROM campaign_data
GROUP BY Campaign_Type
ORDER BY Revenue DESC;

SELECT
Channel,
SUM(Converted) Conversions,
SUM(Revenue) Revenue
FROM campaign_data
GROUP BY Channel
ORDER BY Revenue DESC;

SELECT
CASE
WHEN Income < 50000 THEN 'Low Income'
WHEN Income < 100000 THEN 'Medium Income'
ELSE 'High Income'
END AS Segment,

SUM(Converted) Conversions,
SUM(Revenue) Revenue

FROM campaign_data

GROUP BY Segment;
