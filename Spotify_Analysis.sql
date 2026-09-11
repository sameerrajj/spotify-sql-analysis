-- EDA----------
select * from spotify;

select count(*) from spotify;

select count(distinct artist) from spotify;

select count(distinct album) from spotify;

select distinct album_type from spotify;

select distinct licensed from spotify;

select distinct official_video from spotify;

select distinct most_played_on from spotify;

select max(duration_min) from spotify;
select min(duration_min) from spotify;

select * from spotify where duration_min=0;

delete from spotify where duration_min=0;

-- --------------------------------------
-- DATA ANALYSIS
-- --------------------------------------

-- Q1- Retrieve the names of all tracks that have more than 1 billion streams.

select distinct track, views from spotify where views > 1000000000 order by 2 desc;

-- Q2- List all albums along with their respective artists.

select distinct album, artist from spotify;

-- Q3- Get the total number of comments for tracks where licensed = TRUE.

select track, comments from spotify where licensed=TRUE order by 2 desc;

-- Q4- Find all tracks that belong to the album type single.

select distinct track from spotify where album_type='single';

-- Q5- Count the total number of tracks by each artist.

select artist, count(track) from spotify group by 1 order by 2 desc;

-- Q6- Calculate the average danceability of tracks in each album.

select album, avg(danceability) from spotify group by 1 order by 2 desc;

-- Q7- Find the top 5 tracks with the highest energy values.

select track, max(energy) from spotify group by 1 order by 2 desc limit 5;

-- Q8- List all tracks along with their views and likes where official_video = TRUE.

select track, views, likes from spotify where official_video=TRUE;

-- Q9- For each album, calculate the total views of all associated tracks.

select album, track, sum(views) from spotify group by 1, 2 order by 3 desc

-- Q10- Retrieve the track names that have been streamed on Spotify more than YouTube.

select * from
(select track,
coalesce(sum(case when most_played_on='Youtube' then stream end),0) as streamed_on_youtube,
coalesce(sum(case when most_played_on='Spotify' then stream end),0) as streamed_on_spotify
from spotify group by 1) as t1
where streamed_on_spotify > streamed_on_youtube and streamed_on_youtube <> 0

-- Q11- Find the top 3 most-viewed tracks for each artist using window functions

with ranking_artist as (
select artist, track, sum(views) as total_views,
dense_rank() over(partition by artist order by sum(views) desc) as rank
from spotify group by 1, 2 order by 1, 3 desc
)
select * from ranking_artist where rank <= 3

-- Q12- Write a query to find tracks where the liveness score is above the average.
select track, liveness from spotify where liveness > (select avg(liveness) from spotify)

/* Q13- Use a WITH clause to calculate the difference between the highest
and lowest energy values for tracks in each album.*/

with cte as(
select album, max(energy) as max_energy, min(energy) as min_energy from spotify group by 1
)
select album, max_energy - min_energy as energy_diff from cte order by energy_diff desc

-- Q14- Find tracks where the energy-to-liveness ratio is greater than 1.2

select track, (energy / nullif(liveness,0)) as e2l_ratio from spotify where
(energy / nullif(liveness,0)) > 1.2
order by 2 desc

/* Q15- Calculate the cumulative sum of likes for tracks ordered by the number of views, 
using window functions.*/

select track, likes, views, sum(likes) over(order by views desc) as cumlative_likes from spotify