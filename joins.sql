SELECT *
FROM users;

SELECT *
FROM posts
WHERE user_id = 100;

SELECT *, posts.user_id.first_name, posts.user_id.last_name
FROM posts
WHERE user_id = 200;