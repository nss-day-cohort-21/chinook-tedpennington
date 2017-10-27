SELECT Playlist.Name as PlaylistName, count(*) as TrackCount
FROM PlaylistTrack
JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.PlaylistId;
