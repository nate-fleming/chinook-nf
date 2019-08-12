SELECT TOP 3 ar.Name, COUNT(il.InvoiceLineId) AS TracksSold
FROM InvoiceLine il
LEFT JOIN Track t ON t.TrackId = il.TrackId
LEFT JOIN Invoice i ON i.InvoiceId = il.InvoiceId
LEFT JOIN Album a ON a.AlbumId = t.AlbumId
LEFT JOIN Artist ar ON ar.ArtistId = a.ArtistId
GROUP BY ar.Name 
ORDER BY COUNT(il.InvoiceLineId) DESC


