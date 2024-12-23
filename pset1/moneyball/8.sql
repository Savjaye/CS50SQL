SELECT salaries.salary
FROM
    salaries
WHERE
    salaries.year = 2001 AND
    salaries.player_id = (
        SELECT player_id FROM performances WHERE performances.HR = (SELECT MAX(HR) FROM performances WHERE year =2001)
    );


