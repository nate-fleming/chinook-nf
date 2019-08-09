SELECT i.Total, c.FirstName, c.LastName, c.Country, e.FirstName AS SAFirstName, e.LastName AS SALastName
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE Title = 'Sales Support Agent'