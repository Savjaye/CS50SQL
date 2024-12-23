SELECT
    players.first_name,
    players.last_name,
    performances.year,
    performances.HR,
    salaries.salary
FROM
    performances
JOIN
    salaries
    ON (salaries.player_id = performances.player_id) AND (salaries.year = performances.year)
JOIN
    players
    ON players.id = performances.player_id
ORDER BY
    players.id ASC,
    performances.year DESC,
    performances.HR DESC,
    salaries.salary DESC;


