SELECT InvoiceLine.TrackId, Track.Name, InvoiceLine.Quantity, 
	count(*) AS PurchaseCount, Invoice.InvoiceDate as DateSold
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.InvoiceDate LIKE '2013%'
GROUP BY Track.TrackId
ORDER BY PurchaseCount desc