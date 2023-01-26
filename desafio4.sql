SELECT
    u.`name` AS usuario,
    IF( (YEAR(MAX(uh.rep_date)) >= 2021),
        'Usuário ativo',
        'Usuário inativo'
    ) AS status_usuario
FROM SpotifyClone.`user` AS u
    INNER JOIN SpotifyClone.user_history as uh ON u.user_id = uh.user_id
GROUP BY u.`name`
ORDER BY u.`name`;
