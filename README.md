# Blogging Platform

This project is a simple blogging platform built with PHP, MySQL, and Bootstrap. It displays blog posts from a MySQL database with user information and formatted dates.

## Database Structure

### Users Table

The `users` table stores information about the users who post blogs.

| Column    | Type         | Description         |
|-----------|--------------|---------------------|
| user_id   | INT          | Primary Key, Auto Increment |
| username  | VARCHAR(255) | The username of the user |
| email     | VARCHAR(255) | The email of the user |

### Posts Table

The `posts` table stores information about the blog posts.

| Column        | Type         | Description         |
|---------------|--------------|---------------------|
| post_id       | INT          | Primary Key, Auto Increment |
| user_id       | INT          | Foreign Key referencing `users(user_id)` |
| title         | VARCHAR(255) | The title of the blog post |
| content       | TEXT         | The content of the blog post |
| publish_date  | DATE         | The date when the blog post was published |

