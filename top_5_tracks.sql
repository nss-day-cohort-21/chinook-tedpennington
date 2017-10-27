SELECT InvoiceLine.TrackId, Track.Name, InvoiceLine.Quantity, count(*) AS PurchaseCount, Invoice.InvoiceDate as DateSold
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.TrackId
ORDER BY PurchaseCount desc
LIMIT 5;