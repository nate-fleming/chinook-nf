SELECT c.FirstName, c.LastName, i.InvoiceDate, i.BillingCountry, i.InvoiceId
FROM Invoice i
LEFT JOIN Customer c ON i.CustomerId = c.CustomerId
WHERE c.Country = 'Brazil'