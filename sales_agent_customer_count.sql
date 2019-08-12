SELECT COUNT(CustomerId) AS Customers, e.FirstName
FROM Customer c
LEFT JOIN Employee e ON e.EmployeeId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.FirstName