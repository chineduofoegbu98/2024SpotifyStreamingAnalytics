/*
=============================================================================
2024 SPOTIFY STREAMING DATA - STREAMING PERFORMANCE EVOLUTION ANALYSIS
=============================================================================
Purpose: Analyse how streaming performance has evolved over time (1987-2024)
Dataset: Spotify Most Streamed Songs (3,463 tracks with complete cross-platform data)
Author: Chinedu Ofoegbu
Date: 22/08/2025

Business Question:

How has streaming performance evolved over the years?
Which release years produced the most successful tracks?

Skills Demonstrated:

Time-based analysis using YEAR() function
Aggregate functions (COUNT, AVG, SUM)
Data formatting for professional presentation
GROUP BY for yearly analysis
Clean data practices
=============================================================================
*/

-- 1: NUMERIC RESULTS (For calculations and Excel)

SELECT Year(ReleaseDate) AS ReleaseYear,
COUNT(*) AS SongsPerYear,
AVG(SpotifyStreams) AS AVGSpotifyStreams,
SUM(SpotifyStreams) AS TotalYearStreams
FROM vw_CPSTC
WHERE Year(ReleaseDate) between '1987' and '2024'
GROUP BY Year(ReleaseDate)
ORDER BY ReleaseYear;

-- 2: FORMATTED RESULTS (For presentations and reports)

SELECT Year(ReleaseDate) AS ReleaseYear,
COUNT(*) AS SongsPerYear,
FORMAT(AVG(SpotifyStreams), 'N0') AS AVGSpotifyStreams,
FORMAT(SUM(SpotifyStreams), 'N0') AS TotalYearStreams
FROM vw_CPSTC
WHERE Year(ReleaseDate) between '1987' and '2024'
GROUP BY Year(ReleaseDate)
ORDER BY ReleaseYear;

/*
=============================================================================
MAIN FINDINGS:

MARKET EVOLUTION:

2010-2017: Healthy growth (190 songs, 933M average in 2017)
2018+: Market saturation starts (more songs, lower averages)
2023: Oversaturation (828 songs, only 183M average)

MAIN INSIGHTS:

Inverse relationship: more songs released = lower average streams
Peak quality years: Early releases (1987-2002) averaged 1B+ streams
Peak volume years: 2019-2023 dominate total streaming numbers
2017 was the tipping point where volume overtook quality

BUSINESS IMPLICATIONS:

Market became oversaturated after 2018
Quality releases perform better than volume strategies
Early streaming era tracks have lasting power
Current market requires stronger differentiation

=============================================================================
*/
