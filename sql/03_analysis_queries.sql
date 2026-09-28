
-- Analysis Queries

-- 1. Show all student applications with company and role
SELECT
    s.student_name,
    c.company_name,
    r.role_name,
    a.status
FROM students s
JOIN applications a
    ON s.student_id = a.student_id
JOIN job_roles r
    ON a.role_id = r.role_id
JOIN companies c
    ON r.company_id = c.company_id;


-- 2. Number of applications received by each company
SELECT
    c.company_name,
    COUNT(a.application_id) AS total_applications
FROM companies c
JOIN job_roles r
    ON c.company_id = r.company_id
JOIN applications a
    ON r.role_id = a.role_id
GROUP BY c.company_name
ORDER BY total_applications DESC;


-- 3. Average package offered by each company
SELECT
    c.company_name,
    ROUND(AVG(o.package_lpa), 2) AS average_package_lpa
FROM companies c
JOIN job_roles r
    ON c.company_id = r.company_id
JOIN applications a
    ON r.role_id = a.role_id
JOIN offers o
    ON a.application_id = o.application_id
GROUP BY c.company_name
ORDER BY average_package_lpa DESC;


-- 4. Companies having more than one application
SELECT
    c.company_name,
    COUNT(a.application_id) AS total_applications
FROM companies c
JOIN job_roles r
    ON c.company_id = r.company_id
JOIN applications a
    ON r.role_id = a.role_id
GROUP BY c.company_name
HAVING COUNT(a.application_id) > 1;


-- 5. Students having CGPA above the overall average
SELECT
    student_name,
    department,
    cgpa
FROM students
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM students
);


-- 6. Students applying for roles above the average package
SELECT
    s.student_name,
    r.role_name,
    r.package_lpa
FROM students s
JOIN applications a
    ON s.student_id = a.student_id
JOIN job_roles r
    ON a.role_id = r.role_id
WHERE r.package_lpa > (
    SELECT AVG(package_lpa)
    FROM job_roles
);


-- 7. Categorize job roles based on package
SELECT
    role_name,
    package_lpa,
    CASE
        WHEN package_lpa >= 10 THEN 'High'
        WHEN package_lpa >= 7 THEN 'Medium'
        ELSE 'Low'
    END AS package_category
FROM job_roles;


-- 8. Rank job roles by package
SELECT
    role_name,
    package_lpa,
    RANK() OVER (
        ORDER BY package_lpa DESC
    ) AS package_rank
FROM job_roles;


-- 9. Rank students within each department
SELECT
    student_name,
    department,
    cgpa,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY cgpa DESC
    ) AS department_rank
FROM students;


-- 10. Top 2 students from each department
SELECT
    student_name,
    department,
    cgpa
FROM (
    SELECT
        student_name,
        department,
        cgpa,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY cgpa DESC
        ) AS rn
    FROM students
)
WHERE rn <= 2;


-- 11. Show selected students and their offered package
SELECT
    s.student_name,
    c.company_name,
    r.role_name,
    o.package_lpa,
    o.joining_location
FROM students s
JOIN applications a
    ON s.student_id = a.student_id
JOIN job_roles r
    ON a.role_id = r.role_id
JOIN companies c
    ON r.company_id = c.company_id
JOIN offers o
    ON a.application_id = o.application_id
WHERE o.offer_status = 'Accepted';


-- 12. Find the highest package offered
SELECT
    MAX(package_lpa) AS highest_package_lpa
FROM offers;


-- 13. Department-wise average CGPA
SELECT
    department,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students
GROUP BY department
ORDER BY average_cgpa DESC;


-- 14. Count students in each department
SELECT
    department,
    COUNT(*) AS total_students
FROM students
GROUP BY department
ORDER BY total_students DESC;


-- 15. Show skills possessed by each student
SELECT
    s.student_name,
    sk.skill_name,
    sk.skill_category
FROM students s
JOIN student_skills ss
    ON s.student_id = ss.student_id
JOIN skills sk
    ON ss.skill_id = sk.skill_id
ORDER BY s.student_name;


-- 16. Show skills required for each job role
SELECT
    r.role_name,
    sk.skill_name
FROM job_roles r
JOIN job_role_skills jrs
    ON r.role_id = jrs.role_id
JOIN skills sk
    ON jrs.skill_id = sk.skill_id
ORDER BY r.role_name;


-- 17. Count how many students have each skill
SELECT
    sk.skill_name,
    COUNT(ss.student_id) AS student_count
FROM skills sk
LEFT JOIN student_skills ss
    ON sk.skill_id = ss.skill_id
GROUP BY sk.skill_name
ORDER BY student_count DESC;


-- 18. Count applications by status
SELECT
    status,
    COUNT(*) AS total_applications
FROM applications
GROUP BY status
ORDER BY total_applications DESC;


-- 19. Show interview results
SELECT
    s.student_name,
    c.company_name,
    r.role_name,
    i.round_name,
    i.result
FROM students s
JOIN applications a
    ON s.student_id = a.student_id
JOIN job_roles r
    ON a.role_id = r.role_id
JOIN companies c
    ON r.company_id = c.company_id
JOIN interviews i
    ON a.application_id = i.application_id
ORDER BY s.student_name;


-- 20. Highest package role
SELECT
    r.role_name,
    c.company_name,
    r.package_lpa
FROM job_roles r
JOIN companies c
    ON r.company_id = c.company_id
WHERE r.package_lpa = (
    SELECT MAX(package_lpa)
    FROM job_roles
);