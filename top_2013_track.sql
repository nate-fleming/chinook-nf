SELECT MAX(t.Name), MAX(t.Sales) AS Sales
FROM
(SELECT  t.Name, SUM(t.UnitPrice) AS Sales
FROM InvoiceLine il
LEFT JOIN Track t ON t.TrackId = il.TrackId
LEFT JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013' AND '2014'
GROUP BY t.Name)t


