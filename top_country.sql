SELECT TOP 1 BillingCountry, TotalSales
FROM 
(SELECT BillingCountry, SUM(Total) AS TotalSales
FROM Invoice
GROUP BY BillingCountry) ts
ORDER BY TotalSales DESC







