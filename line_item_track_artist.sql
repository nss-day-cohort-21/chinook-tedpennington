SELECT InvoiceLine.*, Track.Name as Track, Artist.Name as Artist
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
ORDER BY InvoiceId;

