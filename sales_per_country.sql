SELECT Customer.Country, SUM(Invoice.Total) AS SalesTotal
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.Country;