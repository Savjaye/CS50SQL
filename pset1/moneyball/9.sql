SELECT teams.name, ROUND(AVG(salaries.salary), 2) as "Average Salary"
FROM
    salaries
LEFT JOIN
    teams
    ON teams.id = salaries.team_id
WHERE salaries.year = 2001
GROUP BY
    salaries.team_id
ORDER BY
    "Average Salary" ASC
LIMIT 5;
