SELECT
    u.`name` AS usuario,
    COUNT(uh.song_id) AS qt_de_musicas_ouvidas,
    SUM(ROUND(s.duration / 60, 2)) AS total_minutos
FROM SpotifyClone.`user` AS u
    INNER JOIN SpotifyClone.user_history AS uh ON u.user_id = uh.user_id
    INNER JOIN SpotifyClone.song AS s ON s.song_id = uh.song_id
GROUP BY u.`name`
ORDER BY u.`name`;
