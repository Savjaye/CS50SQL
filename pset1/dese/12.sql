SELECT districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary
FROM
    districts
JOIN
    staff_evaluations
    ON districts.id = staff_evaluations.district_id
JOIN
    expenditures
    ON districts.id = expenditures.district_id
WHERE
    districts.type LIKE '%_ublic%' AND
    expenditures.per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) FROM expenditures) AND
    staff_evaluations.exemplary > (SELECT AVG(exemplary) FROM staff_evaluations)
ORDER BY
    staff_evaluations.exemplary DESC,
    expenditures.per_pupil_expenditure DESC;

