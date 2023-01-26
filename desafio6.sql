SELECT
    MIN(`value`) AS faturamento_minimo,
    MAX(`value`) AS faturamento_maximo,
    ROUND(AVG(`value`), 2) AS faturamento_medio,
    ROUND(SUM(`value`), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
    INNER JOIN SpotifyClone.user as u ON p.plan_id = u.plan_id;
