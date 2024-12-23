SELECT city, COUNT(type) AS n_public
FROM schools
WHERE type LIKE '%_ublic%'
GROUP BY city
HAVING n_public <= 3
ORDER BY n_public DESC, city ASC;
