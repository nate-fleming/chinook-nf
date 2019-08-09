SELECT e.FirstName, e.LastName, i.InvoiceId, i.Total, i.BillingAddress, i.BillingCity, i.BillingCountry, i.BillingPostalCode, i.BillingState
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE Title = 'Sales Support Agent'