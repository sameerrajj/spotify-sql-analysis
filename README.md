# Spotify SQL Data Analysis

## Project Overview

This project analyzes Spotify track-level data using **PostgreSQL and SQL**. The analysis focuses on artists, albums, tracks, views, likes, comments, streams, and audio characteristics.

The project is designed as a **Data Analyst portfolio project**, progressing from exploratory data analysis to more advanced SQL techniques.

## Dataset

- **20,592 records**
- **24 columns**
- Track-level Spotify data
- Key fields include:
  - `artist`
  - `track`
  - `album`
  - `album_type`
  - `views`
  - `likes`
  - `comments`
  - `stream`
  - `energy`
  - `liveness`
  - `licensed`
  - `official_video`
  - `most_played_on`

The dataset was explored and cleaned before analysis.

## Exploratory Data Analysis

The initial analysis covered:

- Total number of records
- Distinct artists and albums
- Album types
- Licensed vs. non-licensed tracks
- Official video availability
- Most-played platforms
- Minimum and maximum track duration
- Records with zero duration

## SQL Analysis

The project contains **15 SQL questions**, progressing from basic analysis to advanced SQL.

### Questions 1–5

1. Retrieve tracks with more than 1 billion streams.
2. List albums along with their respective artists.
3. Find comments for licensed tracks.
4. Find tracks belonging to the `single` album type.
5. Count the total number of tracks by each artist.

### Questions 6–10

6. Calculate average danceability by album.
7. Find the top 5 tracks with the highest energy values.
8. List tracks with views and likes where `official_video = TRUE`.
9. Calculate total views associated with each album.
10. Compare Spotify and YouTube streams using conditional aggregation.

### Questions 11–15

11. Find the top 3 most-viewed tracks for each artist using `DENSE_RANK()`.
12. Find tracks where the liveness score is above the overall average.
13. Calculate the difference between the highest and lowest energy values for each album using a CTE.
14. Find tracks where the energy-to-liveness ratio is greater than 1.2.
15. Calculate the cumulative sum of likes ordered by views using a window function.

## SQL Concepts Demonstrated

- `SELECT`, `WHERE`, `DISTINCT`
- `ORDER BY`, `LIMIT`
- `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
- `GROUP BY`
- `CASE WHEN`
- Conditional aggregation
- `COALESCE()`
- `NULLIF()`
- Subqueries
- Common Table Expressions (CTEs)
- Window functions
- `OVER()`
- `PARTITION BY`
- `DENSE_RANK()`
- Cumulative calculations
- Ratio calculations

## Data Analyst Skills Practiced

- Exploring and understanding structured datasets
- Translating analytical questions into SQL
- Filtering and aggregating data
- Comparing business metrics
- Handling NULL and zero values
- Ranking records
- Performing cumulative calculations
- Extracting insights from query results
- Documenting analytical work

## Project Files

```text
Spotify-SQL-Data-Analysis/
│
├── README.md
├── data/
│   └── cleaned_dataset.csv
├── sql/
│   └── Spotify_Analysis.sql
└── Spotify_SQL_Data_Analysis.pdf
