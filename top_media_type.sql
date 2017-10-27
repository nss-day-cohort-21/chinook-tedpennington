SELECT InvoiceLine.TrackId, MediaType.Name AS MediaType, InvoiceLine.Quantity, count(*) AS SalesCount
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType
ORDER BY SalesCount desc;