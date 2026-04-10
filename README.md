# CineStats-Movie-Analysis
Movie industry data analysis using MySQL — exploring box office trends,  genre popularity, director performance and revenue insights on a 500+ record IMDB-style dataset.


# CineStats — Movie Industry Insights Engine

## Overview
CineStats is a SQL-based data analysis project that explores movie industry 
trends using a 500+ record IMDB-style dataset. It covers box office performance, 
genre popularity, director analytics, and revenue insights using MySQL.

## Database Structure
- **movies** — 500 records with title, release date, genre, language, 
  revenue, popularity, ratings, and awards
- **directors** — 40 directors with name and gender details
- Both tables are linked via director_id (Foreign Key)

## Queries Covered
- Retrieve and filter movie and director data
- Count total movies and female directors
- Find top 3 most popular and most bankable movies
- Analyze average ratings of award-winning movies since 2000
- Identify the most prolific and highest-earning directors
- Multi-table JOIN queries across movies and directors

## Tech Stack
- MySQL
- MySQL Workbench

## How to Use
1. Import `directors.csv` into the `directors` table
2. Import `movies.csv` into the `movies` table
3. Run the queries from `queries.sql`

## Key Learnings
- Writing JOIN queries across multiple tables
- Using GROUP BY, ORDER BY, HAVING clauses
- Aggregate functions — COUNT, SUM, AVG, MAX
- Filtering with WHERE, LIKE, and IN operators
- Foreign key relationships between tables
