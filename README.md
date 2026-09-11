# Spotify SQL Data Analysis

## Project Overview

This project analyzes a Spotify dataset using PostgreSQL and SQL.

The dataset contains information about tracks, artists, albums, audio characteristics, views, likes, comments, streams, and platform-related attributes.

The main objective of this project is to explore the dataset and answer different analytical questions using SQL, starting from basic data exploration and progressing to aggregation, subqueries, CTEs, conditional logic, and window functions.

---

## Dataset

The dataset contains **24 columns** related to Spotify tracks, artists, albums, engagement metrics, audio characteristics, and platform information.

### Dataset Columns

| Column | Description |
|---|---|
| `artist` | Name of the artist |
| `track` | Name of the track |
| `album` | Album associated with the track |
| `album_type` | Type of album |
| `danceability` | Danceability score of the track |
| `energy` | Energy score of the track |
| `loudness` | Loudness of the track |
| `speechiness` | Speechiness score of the track |
| `acousticness` | Acousticness score of the track |
| `instrumentalness` | Instrumentalness score of the track |
| `liveness` | Liveness score of the track |
| `valence` | Musical positiveness/valence score |
| `tempo` | Tempo of the track |
| `duration_min` | Track duration in minutes |
| `title` | Title information |
| `channel` | Channel associated with the track |
| `views` | Number of views |
| `likes` | Number of likes |
| `comments` | Number of comments |
| `licensed` | Whether the content is licensed |
| `official_video` | Whether the track has an official video |
| `stream` | Number of streams |
| `energy_liveness` | Energy-to-liveness related metric |
| `most_played_on` | Platform where the track is most played |

---

## Tools & Technologies

- PostgreSQL
- SQL
- pgAdmin 4
- GitHub

---

## Project Workflow

The project was completed through the following stages:

1. Data exploration
2. Data cleaning
3. Exploratory Data Analysis (EDA)
4. Basic SQL analysis
5. Aggregate analysis
6. Conditional analysis
7. Subqueries
8. Common Table Expressions (CTEs)
9. Window functions
10. Analytical calculations

---

## Exploratory Data Analysis

The initial exploration was performed to understand the dataset and its characteristics.

The EDA includes:

- Checking the complete dataset
- Counting total records
- Counting distinct artists
- Counting distinct albums
- Checking different album types
- Checking licensed content
- Checking official video values
- Checking the platforms on which tracks are most played
- Finding minimum and maximum track duration
- Identifying records with zero track duration

---

## SQL Analysis

The project contains **15 SQL questions** covering different levels of SQL analysis.

### Basic Analysis

1. Retrieve tracks that have more than 1 billion streams.
2. List albums along with their respective artists.
3. Get the total number of comments for licensed tracks.
4. Find tracks that belong to the `single` album type.
5. Count the total number of tracks by each artist.

### Aggregation Analysis

6. Calculate the average danceability of tracks in each album.
7. Find the top 5 tracks with the highest energy values.
8. List tracks along with their views and likes where `official_video = TRUE`.
9. Calculate the total views of tracks for each album.
10. Compare Spotify and YouTube streams for tracks.

### Advanced SQL Analysis

11. Find the top 3 most-viewed tracks for each artist using window functions.
12. Find tracks where the liveness score is above the average.
13. Calculate the difference between the highest and lowest energy values for tracks in each album using a CTE.
14. Find tracks where the energy-to-liveness ratio is greater than 1.2.
15. Calculate the cumulative sum of likes for tracks ordered by views using a window function.

---

## SQL Concepts Demonstrated

### Data Exploration

- `SELECT`
- `COUNT()`
- `DISTINCT`
- `MIN()`
- `MAX()`

### Filtering

- `WHERE`
- Comparison operators
- Boolean conditions

### Aggregation

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`

### Conditional Logic

- `CASE WHEN`

### NULL Handling

- `COALESCE()`
- `NULLIF()`

### Subqueries

Subqueries were used to compare individual track values against aggregate values such as the average liveness score.

### Common Table Expressions

- `WITH`
- CTE-based calculations

### Window Functions

- `OVER()`
- `PARTITION BY`
- `DENSE_RANK()`
- Cumulative `SUM()`

### Analytical Calculations

- Ratios
- Differences between aggregate values
- Ranking
- Cumulative calculations
- Platform comparison

---

## Window Functions

Two important window-function concepts were practiced in this project.

### Ranking Tracks by Artist

`DENSE_RANK()` was used with `PARTITION BY` to rank tracks based on their total views within each artist.

### Cumulative Likes

A windowed `SUM()` was used to calculate the cumulative number of likes while ordering tracks by views.

These queries helped demonstrate how window functions can perform calculations across related rows without collapsing the result into a single row per group.

---

## Project Screenshots

### 1. Exploratory Data Analysis

![EDA](screenshots/01-eda.png)

### 2. Basic SQL Analysis

![Basic SQL](screenshots/02-basic-sql.png)

### 3. Aggregate Analysis

![Aggregation](screenshots/03-aggregation.png)

### 4. Advanced SQL Analysis

![Advanced SQL](screenshots/04-advanced-sql.png)

### 5. Window Functions

![Window Functions](screenshots/05-window-functions.png)

---

## Repository Structure

```text
spotify-sql-analysis/
│
├── README.md
│
├── sql/
│   └── Spotify_Analysis.sql
│
├── data/
│   └── cleaned_dataset.csv
│
└── screenshots/
    ├── 01-eda.png
    ├── 02-basic-sql.png
    ├── 03-aggregation.png
    ├── 04-advanced-sql.png
    └── 05-window-functions.png
