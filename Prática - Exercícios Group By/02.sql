SELECT "userId", COUNT("userId") AS "educations"
FROM educations
GROUP BY "userId";