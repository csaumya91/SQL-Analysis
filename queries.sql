-- Question1: Which country generates highest revenue or which markets drive concentration?
SELECT
Country,
SUM(Quantity * UnitPrice) AS total_revenue
FROM dataset2
GROUP BY Country
ORDER BY total_revenue DESC
limit 10;

-- Question2: Monthly revenue trend
Select
Date_trunc(month, "InvoiceDate") as Month,
sum(Quantity * UnitPrice) as revenue
  from dataset2
  group by month
  order by month;

-- Question3: Top revenue-generating customers
SELECT
CustomerID, SUM(Quantity * Unitprice) AS customer_revenue
from dataset2
group by CustomerID
order by customer_revenue DESC
limit 10;

--Question4: Repeat purchase customers
Select
CustomerID,
count (DISTINCT InvoiceNo) as purchase_frequency
from dataset2
group by CustomerID 
Having purchase_frequency > 1

--Question5: High Value Products
Select
Description,
SUM (Quantity*UnitPrice) as product_revenue
from dataset2
group by Description
order by product revenue Desc
limit 10;

