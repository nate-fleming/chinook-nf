SELECT TOP 1 m.Name, COUNT(il.InvoiceLineId) AS TotalSold
FROM Invoice i
LEFT JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
LEFT JOIN Track t ON t.TrackId = il.TrackId
LEFT JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
GROUP BY m.Name
ORDER BY COUNT(il.InvoiceLineId) DESC