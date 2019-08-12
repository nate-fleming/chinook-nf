SELECT TOP 5  t.Name, COUNT(il.InvoiceLineId) Sold
FROM InvoiceLine il
LEFT JOIN Track t ON t.TrackId = il.TrackId
LEFT JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY COUNT(il.InvoiceLineId)  DESC
