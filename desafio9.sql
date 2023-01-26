SELECT
    COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.`user` AS u
    INNER JOIN SpotifyClone.artist_followers AS af ON af.user_id = u.user_id
GROUP BY u.`name`
HAVING
    u.`name` = 'Barbara Liskov';
