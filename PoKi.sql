--1. What grades are stored in the database?
SELECT name FROM Grade
--2. What emotions may be associated with a poem?
SELECT name FROM Emotion
--3. How many poems are in the database?
SELECT COUNT(Title)
Title
FROM Poem
--4. Sort authors alphabetically by name. What are the names of the top 76 authors?
SELECT TOP 76
Name
FROM Author
ORDER BY Name
--5. Starting with the above query, add the grade of each of the authors.
SELECT TOP 76
Name, GradeId
FROM Author
ORDER BY Name
--6. Starting with the above query, add the recorded gender of each of the authors.
SELECT TOP 76
a.Name, g.Name, grade.Name
FROM Author a
JOIN Gender g ON g.Id = a.GenderId
JOIN Grade grade ON a.GradeId = g.Id
ORDER BY a.Name
--7. What is the total number of words in all poems in the database?
SELECT SUM(WordCount) AS 'Total Number of Words'
FROM Poem 
--8. Which poem has the fewest characters?
SELECT MIN(CharCount) AS 'Minumum Character Count'
FROM Poem
--9. How many authors are in the third grade?
SELECT COUNT(g.Name)
FROM Author a
JOIN Grade g ON a.GradeId = g.Id
WHERE g.Name = '3rd Grade'
--10. How many authors are in the first, second or third grades?
SELECT COUNT(g.Name)
FROM Author a
JOIN Grade g ON a.GradeId = g.Id
WHERE g.Name = '3rd Grade' OR g.Name = '2nd Grade' OR g.Name = '1st Grade'
--11. What is the total number of poems written by fourth graders?

--12. How many poems are there per grade?
--13. How many authors are in each grade? (Order your results by grade starting with 1st Grade)
--14. What is the title of the poem that has the most words?
--15. Which author(s) have the most poems? (Remember authors can have the same name.)
--16. How many poems have an emotion of sadness?
--17. How many poems are not associated with any emotion?
--18. Which emotion is associated with the least number of poems?
--19. Which grade has the largest number of poems with an emotion of joy?
--20. Which gender has the least number of poems with an emotion of fear?