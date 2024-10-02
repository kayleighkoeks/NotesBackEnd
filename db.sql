
-- Create users table for authentication
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(100) NOT NULL,
    salt VARCHAR(50) NOT NULL
);

-- Create notes table
CREATE TABLE notes (
    note_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    title VARCHAR(100) NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Create tags table for categorizing notes
CREATE TABLE tags (
    tag_id SERIAL PRIMARY KEY,
    tag_name VARCHAR(50) UNIQUE NOT NULL
);

-- Create a junction table to associate notes with tags (many-to-many relationship)
CREATE TABLE note_tags (
    note_id INT REFERENCES notes(note_id),
    tag_id INT REFERENCES tags(tag_id),
    PRIMARY KEY (note_id, tag_id)
);


