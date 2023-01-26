SELECT
    s.`name` AS cancao,
    COUNT(*) as reproducoes
FROM SpotifyClone.song AS s
    INNER JOIN SpotifyClone.user_history AS u ON s.song_id = u.song_id
GROUP BY s.`name`
HAVING
    s.`name` = 'Feeling Good'
    OR s.`name` = 'Samba em Paris'
ORDER BY s.`name`;
