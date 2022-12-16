SELECT schools.name, courses.name, COUNT(educations."userId") AS "studentsCount", educations.status
FROM educations
JOIN courses
ON educations."courseId" = courses.id
JOIN schools
ON educations."schoolId" = schools.id
WHERE educations.status IN ('ongoing', 'finished')
GROUP BY schools.name, courses.name, educations.status
ORDER BY "studentsCount" DESC
LIMIT 3;