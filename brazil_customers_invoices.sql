SELECT 
FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM
Customer
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Country = 'Brazil';