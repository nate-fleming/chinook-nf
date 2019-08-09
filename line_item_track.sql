SELECT i.InvoiceId, t.Name
FROM InvoiceLine i
LEFT JOIN Track t ON t.TrackId = i.TrackId