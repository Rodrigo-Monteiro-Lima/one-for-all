SELECT
    COUNT(DISTINCT s.song_id) AS cancoes,
    COUNT(DISTINCT ar.artist_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.song AS s
    INNER JOIN SpotifyClone.artist AS ar
    INNER JOIN SpotifyClone.album AS al;
