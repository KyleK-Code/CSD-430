/* 
Author: Kyle Klausen
Class: CSD-430
Date: 02/06/2026
Description: Table breakdown of favorite movies, director, date, and rating
*/

CREATE DATABASE CSD430;
USE CSD430;

CREATE TABLE kyle_movies_data (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    director VARCHAR(100),
    release_year INT,
    rating DECIMAL(2,1)
);

INSERT INTO kyle_movies_data (title, genre, director, release_year, rating) VALUES
('Inception', 'Sci-Fi', 'Christopher Nolan', 2010, 8.8),
('The Matrix', 'Sci-Fi', 'Wachowski Sisters', 1999, 8.7),
('Interstellar', 'Sci-Fi', 'Christopher Nolan', 2014, 8.6),
('Gladiator', 'Action', 'Ridley Scott', 2000, 8.5),
('The Dark Knight', 'Action', 'Christopher Nolan', 2008, 9.0),
('Pulp Fiction', 'Crime', 'Quentin Tarantino', 1994, 8.9),
('Fight Club', 'Drama', 'David Fincher', 1999, 8.8),
('Forrest Gump', 'Drama', 'Robert Zemeckis', 1994, 8.8),
('The Shawshank Redemption', 'Drama', 'Frank Darabont', 1994, 9.3),
('The Godfather', 'Crime', 'Francis Ford Coppola', 1972, 9.2);
