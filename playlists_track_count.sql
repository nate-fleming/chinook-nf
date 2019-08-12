SELECT COUNT(*) AS Tracks, pl.Name 
FROM PlaylistTrack p
LEFT JOIN Track t ON t.TrackId = p.TrackId
LEFT JOIN Playlist pl ON pl.PlaylistId = p.PlaylistId
GROUP BY pl.Name 
