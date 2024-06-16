-- Create users table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Create posts table
CREATE TABLE posts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    publish_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Insert data into users table
INSERT INTO users (username, email) VALUES
('johndoe', 'john@example.com'),
('janedoe', 'jane@example.com'),
('bobsmith', 'bob@example.com'),
('alicegreen', 'alice@example.com'),
('mikesmith', 'mike@example.com');

-- Insert data into posts table
INSERT INTO posts (user_id, title, content, publish_date) VALUES
(1, 'My First Post', 'Today, I am starting my blogging journey. I have always wanted to share my thoughts and ideas with the world. I hope to cover a wide range of topics from technology to personal development. Stay tuned for more updates!', '2024-06-01'),
(2, 'A Day in the Life', 'It was a productive day today. I started my morning with a refreshing run in the park, followed by a healthy breakfast. Then, I spent the rest of the day working on my latest project at work. In the evening, I enjoyed some quality time with my family.', '2024-06-02'),
(1, 'Another Post', 'Here’s another post to keep you all updated. I recently started learning a new programming language, and it has been an exciting journey so far. The more I learn, the more I realize how much there is to know. It’s both challenging and rewarding.', '2024-06-03'),
(3, 'Tips and Tricks', 'Today, I want to share some tips and tricks that have helped me stay organized and productive. First, always make a to-do list. It helps you keep track of your tasks and prioritize them. Second, take regular breaks to avoid burnout. Finally, stay positive and motivated.', '2024-06-04'),
(4, 'My Favorite Recipes', 'Cooking is one of my passions, and I love experimenting with new recipes. Today, I am sharing my favorite recipe for a delicious chocolate cake. It’s easy to make and always a hit at parties. Start by preheating your oven to 350°F. Then, mix all the ingredients and bake for 30 minutes.', '2024-06-05'),
(5, 'Travel Diary', 'Traveling is something I enjoy immensely. I recently visited Paris, and it was an amazing experience. The city is beautiful, and the food is incredible. I visited the Eiffel Tower, the Louvre, and many other iconic places. Can’t wait for my next adventure!', '2024-06-06'),
(2, 'Review of a Movie', 'I watched a fantastic movie last night called "Inception". The storyline was intriguing, and the visual effects were stunning. The movie keeps you on the edge of your seat from start to finish. I highly recommend it to anyone who loves science fiction and thriller genres.', '2024-06-07'),
(3, 'Learning New Skills', 'In today’s post, I want to talk about the importance of learning new skills. It keeps your mind sharp and opens up new opportunities. I recently started learning to play the guitar, and it has been a wonderful experience. It’s never too late to start something new.', '2024-06-08'),
(4, 'Fitness Journey', 'Staying fit is crucial for a healthy lifestyle. I have been working out regularly for the past few months, and I can already see the benefits. I feel more energetic and focused. My routine includes a mix of cardio, strength training, and yoga. It’s important to find a balance that works for you.', '2024-06-09'),
(5, 'Book Recommendations', 'Reading is one of my favorite pastimes. I recently read "The Alchemist" by Paulo Coelho, and it was a fantastic read. The book is full of wisdom and inspiration. Another great book I recommend is "To Kill a Mockingbird" by Harper Lee. Both books offer valuable life lessons.', '2024-06-10');
