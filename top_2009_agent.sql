SELECT EmployeeId, FirstName, LastName, MAX(SalesIn2009) as TopSales
FROM (
	SELECT Employee.EmployeeId, Employee.FirstName, Employee.LastName, SUM(Invoice.Total) as SalesIn2009
	FROM Invoice
	JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
	JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
	WHERE Invoice.InvoiceDate LIKE '2009%'
	GROUP BY Employee.EmployeeId
	);