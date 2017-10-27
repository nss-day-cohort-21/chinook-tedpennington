SELECT Invoice.Total as InvoiceTotal, Customer.FirstName as CustomerFirstName, 
	Customer.LastName as CustomerLastName, Customer.Country as CustomerCountry, 
	Employee.FirstName as EmployeeFirstName, Employee.LastName as EmployeeLastName
FROM Invoice 
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId 
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId 
ORDER BY Customer.CustomerId;