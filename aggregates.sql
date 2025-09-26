
# 2) `aggregates.sql`
```sql
-- aggregates.sql
USE student_attendance;

-- 1. Count all students
SELECT COUNT(*) AS total_students FROM Students;

-- 2. Find average age
SELECT AVG(age) AS average_age FROM Students;

-- 3. Minimum and maximum age
SELECT MIN(age) AS youngest, MAX(age) AS oldest FROM Students;

-- 4. Group students by age
SELECT age, COUNT(*) AS total FROM Students GROUP BY age;

-- 5. Count attendance by status
SELECT status, COUNT(*) AS total FROM Attendance GROUP BY status;

-- 6. Count attendance per student
SELECT student_id, COUNT(*) AS total_classes
FROM Attendance
GROUP BY student_id;

-- 7. Attendance per student only where count > 1
SELECT student_id, COUNT(*) AS present_days
FROM Attendance
WHERE status = 'Present'
GROUP BY student_id
HAVING COUNT(*) > 1;

-- 8. Average age rounded to 1 decimal
SELECT ROUND(AVG(age), 1) AS avg_age_rounded FROM Students;

-- 9. Count distinct ages
SELECT COUNT(DISTINCT age) AS unique_age_count FROM Students;

-- 10. Highest age per first letter of name
SELECT LEFT(name, 1) AS initial, MAX(age) AS max_age
FROM Students
GROUP BY LEFT(name, 1);
