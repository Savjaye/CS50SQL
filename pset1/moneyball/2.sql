SELECT year, salary
FROM
    players
LEFT JOIN
    salaries
    ON players.id = salaries.player_id
WHERE
    players.first_name = 'Cal'
    AND players.last_name = 'Ripken'
ORDER BY
    year DESC;

