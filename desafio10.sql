SELECT
    s.`name` AS nome,
    COUNT(uh.user_id) AS reproducoes
FROM SpotifyClone.song AS s
    INNER JOIN SpotifyClone.user_history AS uh ON uh.song_id = s.song_id
    INNER JOIN SpotifyClone.`user` AS u ON u.user_id = uh.user_id
WHERE u.plan_id IN(1, 4)
GROUP BY nome
ORDER BY nome;
