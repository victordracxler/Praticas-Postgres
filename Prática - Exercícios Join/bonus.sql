SELECT schools.id, schools.name AS "school", courses.name AS "course", companies.name as "company", roles.name AS "role"
FROM roles JOIN jobs
ON roles.id = jobs."roleId"
JOIN companies
ON jobs."companyId" = companies.id
JOIN applicants
ON jobs.id = applicants."jobId"
JOIN users
ON applicants."userId" = users.id
JOIN educations
ON users.id = educations."userId"
JOIN schools
ON educations."schoolId" = schools.id
JOIN courses
ON educations."courseId" = courses.id

WHERE companies.id = 10 AND jobs.active IS TRUE;