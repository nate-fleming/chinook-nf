SELECT  MAX(ts.fullName) AS Employee, MAX(ts.TotalSales) AS Sales
FROM
(SELECT CONCAT(e.FirstName, ' ', e.LastName) AS fullName, SUM(total) AS TotalSales
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title = 'Sales Support Agent' AND i.InvoiceDate BETWEEN '2009' AND '2010'
GROUP BY e.FirstName, e.LastName)ts







