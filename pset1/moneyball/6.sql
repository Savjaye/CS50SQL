SELECT teams.name, SUM(H) AS "total hits"
FROM
    performances
LEFT JOIN
    teams
    ON teams.id = performances.team_id
WHERE
    performances.year = 2001
GROUP BY
    performances.team_id
ORDER BY
    "total hits" DESC
LIMIT 5;


