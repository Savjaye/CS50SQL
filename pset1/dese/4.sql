SELECT city, COUNT(type) AS n_public
FROM schools
WHERE type LIKE '%_ublic%'
GROUP BY city
ORDER BY n_public DESC, city ASC LIMIT 10;
