# Write your MySQL query statement below
select user_id,name,mail from Users
where mail REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$';

-- without REGEXP '^[a-zA-Z][a-zA
SELECT user_id, name, mail
FROM Users
WHERE 
    mail LIKE '%@leetcode.com'         -- Ensure the domain is @leetcode.com
    AND LEFT(mail, 1) BETWEEN 'a' AND 'z' -- Ensure the first character is a letter
    AND NOT mail LIKE '%[^a-zA-Z0-9._-]%' -- Ensure the prefix contains only valid characters
    AND CHARINDEX('@', mail) > 1;      -- Ensure '@' exists and isn't at the start
