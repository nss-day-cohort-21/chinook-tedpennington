SELECT Employee.EmployeeId, Employee.FirstName as EmployeeFirstName, Employee.LastName as EmployeeLastName, count(*) as NumCustomersAssigned
FROM Customer
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Customer.SupportRepId;