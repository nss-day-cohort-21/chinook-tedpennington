SELECT Customer.Country, count(*)
FROM Invoice
JOIN Customer ON Invoice.CustomerID = Customer.CustomerId
GROUP BY Customer.Country;
