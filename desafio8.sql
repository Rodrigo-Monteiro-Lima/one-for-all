SELECT
    ar.`name` AS artista,
    al.`name` AS album
FROM SpotifyClone.artist AS ar
    INNER JOIN SpotifyClone.album AS al ON ar.artist_id = al.artist_id
WHERE ar.`name` = 'Elis Regina'
ORDER BY album;
