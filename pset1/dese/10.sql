SELECT districts.name, expenditures.per_pupil_expenditure
FROM districts LEFT JOIN expenditures ON districts.id = expenditures.district_id
WHERE districts.type LIKE '%_ublic%'
ORDER BY expenditures.per_pupil_expenditure DESC
LIMIT 10;
