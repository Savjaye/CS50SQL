SELECT
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
    "dolors per hit" ASC,
    players.first_name ASC,
    players.last_name ASC
LIMIT 10;


