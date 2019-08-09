SELECT COUNT(BillingCountry) AS Invoices, BillingCountry
FROM Invoice
GROUp BY BillingCountry