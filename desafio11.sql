SELECT
    `name` AS nome_musica,
    CASE
        WHEN song_id = 9 THEN
        REPLACE
(`name`, 'Bard', 'QA')
            WHEN song_id = 7 THEN
        REPLACE
(`name`, 'Amar', 'Code Review')
            WHEN song_id = 6 THEN
        REPLACE
(
                `name`,
                'Pais',
                'Pull Requests'
            )
            WHEN song_id = 1 THEN
        REPLACE
(`name`, 'SOUL', 'CODE')
            WHEN song_id = 3 THEN
        REPLACE
(
                `name`,
                'SUPERSTAR',
                'SUPERDEV'
            )
    END AS novo_nome
FROM SpotifyClone.song
WHERE
    song_id IN(9, 7, 6, 1, 3)
ORDER BY nome_musica DESC;
