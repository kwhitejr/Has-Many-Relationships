-- SELECT *
-- FROM users;

-- SELECT *
-- FROM posts
-- WHERE user_id = 100;

SELECT posts.*, users.first_name, users.last_name
FROM posts INNER JOIN users ON (user_id = users.id)
WHERE user_id = 200;
