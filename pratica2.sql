--Questao 01
SELECT COUNT("endDate") as "currentExperiences" FROM experiences;

--Questao 02
SELECT "userId" as "id", COUNT(educations."userId") as educations  FROM educations
GROUP BY educations."userId";

--Questao 03
SELECT users.name as "writer", COUNT(*) as "testimonailCount"
FROM testimonials
JOIN users ON testimonials."writerId"=users.id
WHERE testimonials."writerId"= 435
GROUP BY users.name;

--Questao 4
SELECT MAX(jobs.salary) as "maximumSalary", roles.name
FROM jobs 
JOIN roles  ON roles.id = jobs."roleId"
WHERE jobs.active = true
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;
