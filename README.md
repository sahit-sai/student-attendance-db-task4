# Student Attendance DB – Task 4

This project is an extension of the **Student Attendance Database** for practicing  
**Aggregate Functions and Grouping in SQL**.

---

## 📂 Files
- **aggregates.sql** → Queries using `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, `GROUP BY`, `HAVING`
- **sample_output.txt** → Notes / Expected results

---

## 🚀 How to Use
1. Open MySQL Workbench or DB Browser for SQLite.
2. Run your database schema (from Task 2).
3. Load some data (from Task 2).
4. Run queries from `aggregates.sql`.

---

## 🔑 Concepts Covered
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY` to categorize data
- `HAVING` to filter grouped results
- Using `ROUND()` for formatting numbers
- Counting distinct values
- Combining aggregate functions with filtering and sorting

---

## 📝 Example Queries
```sql
-- Count total students
SELECT COUNT(*) AS total_students FROM Students;

-- Average age of students
SELECT AVG(age) AS avg_age FROM Students;

-- Count students by age
SELECT age, COUNT(*) AS count FROM Students GROUP BY age;

-- Attendance count by status
SELECT status, COUNT(*) AS total FROM Attendance GROUP BY status;

-- Attendance count per student
SELECT student_id, COUNT(*) AS days_present
FROM Attendance
WHERE status = 'Present'
GROUP BY student_id
HAVING COUNT(*) > 2; -- filter groups
