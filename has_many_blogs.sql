-- psql has_many_blogs -f has_many_blogs.sql
-- will return error on lines that are redundant

CREATE USER has_many_user;
CREATE DATABASE has_many_blogs WITH OWNER = has_many_user;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
id serial primary key NOT NULL,
username char(90) NOT NULL,
first_name char(90) default NULL,
last_name char(90) default NULL,
created_at timestamp with time zone NOT NULL default now(),
updated_at timestamp with time zone NOT NULL default now()
);

DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
id serial primary key NOT NULL,
title char(180) default NULL,
url char(510) default NULL,
content text default NULL,
created_at timestamp with time zone NOT NULL default now(),
updated_at timestamp with time zone NOT NULL default now(),
user_id int references users(id)
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
id serial primary key NOT NULL,
body char(510) default NULL,
created_at timestamp with time zone NOT NULL default now(),
updated_at timestamp with time zone NOT NULL default now(),
user_id int references users(id),
post_id int references posts(id)
);