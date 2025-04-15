/*
LeetCode Problem 197. Rising Temperature
Table: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.

Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.
Return the result table sorted in any order.

In the join condition, we are using the DATEDIFF function to find pairs of records where the recordDate differs by exactly one day. This condition ensures that we are comparing each day's temperature with the temperature of the previous day.
*/
select w1.id
from Weather w1
join Weather w2
on DATEDIFF(w1.recordDate, w2.recordDate) = 1
where w1.temperature > w2.temperature