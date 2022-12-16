SELECT u.name AS "writer", COUNT(t."writerId") AS "testimonialCount"
FROM users u
JOIN testimonials t
ON u.id = t."writerId"
WHERE t."writerId"= 435
GROUP BY u.name;