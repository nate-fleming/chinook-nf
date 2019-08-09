SELECT i.InvoiceId, t.Name AS Track, ar.Name AS Artist
FROM InvoiceLine i
LEFT JOIN Track t ON t.TrackId = i.TrackId
LEFT JOIN Album a ON t.AlbumId = a.AlbumId
LEFT JOIN Artist ar ON a.ArtistId = ar.ArtistId