
-- Sample Data

-- Students
INSERT INTO students
(student_name, email, department, graduation_year, cgpa)
VALUES
('Arjun', 'arjun@gmail.com', 'IT', 2026, 8.75);

INSERT INTO students
(student_name, email, department, graduation_year, cgpa)
VALUES
('Priya', 'priya@gmail.com', 'CSE', 2026, 9.10);

INSERT INTO students
(student_name, email, department, graduation_year, cgpa)
VALUES
('Rahul', 'rahul@gmail.com', 'ECE', 2026, 8.20);

INSERT INTO students
(student_name, email, department, graduation_year, cgpa)
VALUES
('Sneha', 'sneha@gmail.com', 'IT', 2026, 8.60);

INSERT INTO students
(student_name, email, department, graduation_year, cgpa)
VALUES
('Kiran', 'kiran@gmail.com', 'CSE', 2026, 7.95);


-- Companies
INSERT INTO companies
(company_name, industry, location, company_type)
VALUES
('TCS', 'Information Technology', 'Hyderabad', 'IT Services');

INSERT INTO companies
(company_name, industry, location, company_type)
VALUES
('Deloitte', 'Consulting', 'Bangalore', 'Consulting');

INSERT INTO companies
(company_name, industry, location, company_type)
VALUES
('Amazon', 'E-Commerce & Technology', 'Hyderabad', 'Product');

INSERT INTO companies
(company_name, industry, location, company_type)
VALUES
('Infosys', 'Information Technology', 'Pune', 'IT Services');

INSERT INTO companies
(company_name, industry, location, company_type)
VALUES
('Microsoft', 'Technology', 'Hyderabad', 'Product');


-- Job Roles
INSERT INTO job_roles
(company_id, role_name, minimum_cgpa, package_lpa)
VALUES
(1, 'Software Engineer', 7.00, 6.00);

INSERT INTO job_roles
(company_id, role_name, minimum_cgpa, package_lpa)
VALUES
(2, 'Data Analyst', 7.50, 8.00);

INSERT INTO job_roles
(company_id, role_name, minimum_cgpa, package_lpa)
VALUES
(3, 'Software Development Engineer', 8.00, 18.00);

INSERT INTO job_roles
(company_id, role_name, minimum_cgpa, package_lpa)
VALUES
(4, 'Java Developer', 7.00, 7.00);

INSERT INTO job_roles
(company_id, role_name, minimum_cgpa, package_lpa)
VALUES
(5, 'AI Engineer', 8.00, 15.00);


-- Skills
INSERT INTO skills
(skill_name, skill_category)
VALUES
('Python', 'Programming');

INSERT INTO skills
(skill_name, skill_category)
VALUES
('Java', 'Programming');

INSERT INTO skills
(skill_name, skill_category)
VALUES
('SQL', 'Database');

INSERT INTO skills
(skill_name, skill_category)
VALUES
('AWS', 'Cloud');

INSERT INTO skills
(skill_name, skill_category)
VALUES
('Machine Learning', 'AI/ML');

INSERT INTO skills
(skill_name, skill_category)
VALUES
('React', 'Frontend');

INSERT INTO skills
(skill_name, skill_category)
VALUES
('Spring Boot', 'Backend');

INSERT INTO skills
(skill_name, skill_category)
VALUES
('Docker', 'DevOps');


-- Student Skills
INSERT INTO student_skills (student_id, skill_id)
VALUES (1, 1);

INSERT INTO student_skills (student_id, skill_id)
VALUES (1, 2);

INSERT INTO student_skills (student_id, skill_id)
VALUES (1, 3);

INSERT INTO student_skills (student_id, skill_id)
VALUES (2, 3);

INSERT INTO student_skills (student_id, skill_id)
VALUES (2, 5);

INSERT INTO student_skills (student_id, skill_id)
VALUES (3, 2);

INSERT INTO student_skills (student_id, skill_id)
VALUES (3, 3);

INSERT INTO student_skills (student_id, skill_id)
VALUES (4, 1);

INSERT INTO student_skills (student_id, skill_id)
VALUES (4, 4);

INSERT INTO student_skills (student_id, skill_id)
VALUES (5, 1);

INSERT INTO student_skills (student_id, skill_id)
VALUES (5, 6);


-- Job Role Skills
INSERT INTO job_role_skills (role_id, skill_id)
VALUES (1, 2);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (1, 3);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (1, 7);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (2, 3);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (2, 1);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (3, 1);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (3, 3);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (3, 8);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (5, 1);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (5, 5);

INSERT INTO job_role_skills (role_id, skill_id)
VALUES (5, 4);


-- Applications
INSERT INTO applications
(student_id, role_id, application_date, status)
VALUES
(1, 1, DATE '2026-08-01', 'Selected');

INSERT INTO applications
(student_id, role_id, application_date, status)
VALUES
(1, 3, DATE '2026-08-05', 'Rejected');

INSERT INTO applications
(student_id, role_id, application_date, status)
VALUES
(2, 2, DATE '2026-08-02', 'Selected');

INSERT INTO applications
(student_id, role_id, application_date, status)
VALUES
(2, 5, DATE '2026-08-10', 'Interview');

INSERT INTO applications
(student_id, role_id, application_date, status)
VALUES
(3, 2, DATE '2026-08-03', 'Rejected');

INSERT INTO applications
(student_id, role_id, application_date, status)
VALUES
(4, 4, DATE '2026-08-04', 'Selected');

INSERT INTO applications
(student_id, role_id, application_date, status)
VALUES
(5, 3, DATE '2026-08-06', 'Interview');


-- Interviews
INSERT INTO interviews
(application_id, round_name, interview_date, result)
VALUES
(1, 'Online Test', DATE '2026-08-05', 'Passed');

INSERT INTO interviews
(application_id, round_name, interview_date, result)
VALUES
(1, 'Technical', DATE '2026-08-08', 'Passed');

INSERT INTO interviews
(application_id, round_name, interview_date, result)
VALUES
(1, 'HR', DATE '2026-08-10', 'Passed');

INSERT INTO interviews
(application_id, round_name, interview_date, result)
VALUES
(2, 'Online Test', DATE '2026-08-07', 'Passed');

INSERT INTO interviews
(application_id, round_name, interview_date, result)
VALUES
(2, 'Technical', DATE '2026-08-11', 'Passed');

INSERT INTO interviews
(application_id, round_name, interview_date, result)
VALUES
(4, 'Technical', DATE '2026-08-12', 'Failed');

INSERT INTO interviews
(application_id, round_name, interview_date, result)
VALUES
(6, 'Online Test', DATE '2026-08-09', 'Passed');

INSERT INTO interviews
(application_id, round_name, interview_date, result)
VALUES
(6, 'Technical', DATE '2026-08-13', 'Passed');


-- Offers
INSERT INTO offers
(application_id, offer_date, package_lpa, joining_location, offer_status)
VALUES
(1, DATE '2026-08-12', 6.00, 'Hyderabad', 'Accepted');

INSERT INTO offers
(application_id, offer_date, package_lpa, joining_location, offer_status)
VALUES
(3, DATE '2026-08-15', 8.00, 'Bangalore', 'Accepted');

INSERT INTO offers
(application_id, offer_date, package_lpa, joining_location, offer_status)
VALUES
(6, DATE '2026-08-18', 7.00, 'Pune', 'Accepted');

COMMIT;