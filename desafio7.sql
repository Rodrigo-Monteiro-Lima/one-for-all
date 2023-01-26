SELECT
    ar.`name` AS artista,
    al.`name` AS album,
    COUNT(*) AS seguidores
FROM SpotifyClone.artist AS ar
    INNER JOIN SpotifyClone.album AS al ON ar.artist_id = al.artist_id
    INNER JOIN SpotifyClone.artist_followers AS af ON af.artist_id = al.artist_id
GROUP BY album, artista
ORDER BY
    seguidores DESC,
    artista,
    album;
