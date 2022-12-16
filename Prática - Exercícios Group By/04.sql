SELECT MAX(jobs.salary), roles.name
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE jobs.active IS TRUE
GROUP BY roles.name;