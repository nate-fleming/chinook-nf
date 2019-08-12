SELECT e.FirstName, SUM(i.Total) AS TotalSales
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.FirstName 