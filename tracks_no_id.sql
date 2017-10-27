SELECT Track.Name as TrackName, Album.Title as Album, MediaType.Name as MediaType, Genre.Name as Genre
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId
ORDER BY TrackName;