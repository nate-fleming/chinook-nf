SELECT MAX(t.Name) AS Track, MAX(t.Sales) AS Sold
FROM
(SELECT  t.Name, SUM(il.Quantity) AS Sales
FROM InvoiceLine il
LEFT JOIN Track t ON t.TrackId = il.TrackId
LEFT JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE YEAR(i.InvoiceDate) = 2013
GROUP BY t.Name)t


