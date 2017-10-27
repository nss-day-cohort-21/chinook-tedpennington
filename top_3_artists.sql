SELECT InvoiceLine.TrackId, Artist.Name AS ArtistName, InvoiceLine.Quantity, count(*) AS SalesCount
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY ArtistName
ORDER BY SalesCount desc
LIMIT 3;