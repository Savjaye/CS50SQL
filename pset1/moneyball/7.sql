SELECT players.first_name, players.last_name
FROM
    salaries
LEFT JOIN
    players
    ON players.id = salaries.player_id
WHERE salaries.salary = (SELECT MAX(salary) FROM salaries);
