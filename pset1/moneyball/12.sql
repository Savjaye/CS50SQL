SELECT
    ch.first_name,
    ch.last_name
FROM (
    SELECT
        players.id AS id,
        players.first_name,
        players.last_name,
        (salaries.salary / performances.H) AS "dolors per hit"
    FROM
        players
    JOIN
        performances
        ON players.id = performances.player_id
    JOIN
        salaries
        ON performances.player_id = salaries.player_id AND performances.year = salaries.year
    WHERE
        performances.year = 2001
        AND performances.H != 0
    ORDER BY
        "dolors per hit" ASC
    LIMIT 10
) AS ch
JOIN (
    SELECT
        players.id AS id,
        (salaries.salary / performances.RBI) AS "dolors per RBI"
    FROM
        players
    JOIN
        performances
        ON players.id = performances.player_id
    JOIN
        salaries
        ON performances.player_id = salaries.player_id AND performances.year = salaries.year
    WHERE
        performances.year = 2001
        AND performances.RBI != 0
    ORDER BY
        "dolors per RBI" ASC
    LIMIT 10
) AS crbi
ON ch.id = crbi.id
ORDER BY ch.id;

