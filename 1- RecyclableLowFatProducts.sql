/*
LeetCode Problem 1757. Recyclable and Low Fat Products

Table Schema:
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the primary key.
low_fats is an ENUM of type ('Y', 'N').
recyclable is an ENUM of type ('Y', 'N').

Problem:
Write a solution to find the ids of products that are both low fat and recyclable.
*/

-- My Solution:
SELECT product_id 
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y';