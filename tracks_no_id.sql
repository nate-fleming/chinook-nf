SELECT t.Name, a.Title AS Album, m.Name AS MediaType, g.Name AS Genre
FROM Track t
LEFT JOIN Album a ON a.AlbumId = t.AlbumId
LEFT JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
LEFT JOIN Genre g ON g.GenreId = t.GenreId