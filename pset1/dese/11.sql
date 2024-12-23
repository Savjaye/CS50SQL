SELECT
    schools.name,
    graduation_rates.graduated,
    expenditures.per_pupil_expenditure
FROM
    schools
INNER JOIN
    graduation_rates
    ON schools.id = graduation_rates.school_id
INNER JOIN
    expenditures
    ON schools.district_id = expenditures.district_id
ORDER BY
    expenditures.per_pupil_expenditure DESC,
    schools.name ASC;
