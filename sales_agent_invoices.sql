SELECT EmployeeId, 
	InvoiceId, 
	Employee.FirstName AS EmployeeFirstName, 
	Employee.LastName AS EmployeeLastName 
FROM Invoice 
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId 
INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId 
ORDER BY EmployeeId;