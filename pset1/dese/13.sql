SELECT staff_evaluations.exemplary, graduation_rates.dropped
FROM
    districts
JOIN
    staff_evaluations
ON
    districts.id = staff_evaluations.district_id
JOIN
    schools
ON
    districts.id = schools.district_id
JOIN
    graduation_rates
ON
    schools.id = graduation_rates.school_id
WHERE
    dropped > (SELECT AVG(dropped) FROM graduation_rates) AND
    exemplary > (SELECT AVG(exemplary) FROM staff_evaluations);
