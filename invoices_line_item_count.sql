SELECT COUNT(i.InvoiceId) AS LineItems, i.InvoiceId, i.CustomerId
FROM Invoice i
LEFT JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId, i.CustomerId