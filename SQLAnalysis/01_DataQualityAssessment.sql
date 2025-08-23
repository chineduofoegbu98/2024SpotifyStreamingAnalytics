/*
=============================================================================
2024 SPOTIFY STREAMING DATA - DATA QUALITY ASSESSMENT
=============================================================================
Purpose: Assess data quality and usability for music industry analysis
Dataset: Spotify Most Streamed Songs (4,600+ tracks)
Author: Chinedu Ofoegbu
Date: 18/08/2025

Business Problem: 
Source data contains encoding corruption in text fields affecting song identification.
Need to determine percentage of usable data for meaningful analysis.

Key Skills Demonstrated:

- Data quality assessment
- UNION ALL for reporting
- Logical condition building (AND vs OR)
- Real-world data cleaning

=============================================================================
*/

-- To Count Total Rows In Dataset First

SELECT 'Total Rows' as Metric, COUNT(*) as Count
FROM STC

-- Joining multiple different metrics so multiple queries rather than working query by query

UNION ALL

-- To Count Rows Usable for Analysis
-- eg. Only Rows with Working Identification FIelds and Streaming Data

SELECT 'Fully Usable Rows', COUNT(*)
FROM STC
WHERE Track NOT LIKE '%ý%'
	AND Artist NOT LIKE '%ý%'
	AND AlbumName NOT LIKE '%ý%'
	AND SpotifyStreams IS NOT NULL

UNION ALL

-- Vice Versa, Rows Unusable for Analysis
-- eg. If any Identificaiton Field is Corrupted or Streaming Data Missing

SELECT 'Unusable Rows', COUNT(*)
FROM STC
WHERE Track Like '%ý%'
	OR Artist LIKE '%ý%'
	OR AlbumName LIKE '%ý%'
	OR SpotifyStreams IS NULL;

-- Purpose of Query = To assess how much data is fully usable for a confident and meaningful analysis

-- Result > Total Rows = 4600
--			Fully Usable = 4405
--			Unuable Rows = 195

--			96& of Original Data Usable (Great Percentage)


-- EXAMPLES OF Streaming Data Issues (Null/Empty Spotify Streaming Data)

SELECT TOP 5 
    TrackID, Track, Artist, AlbumName, SpotifyStreams, 'Missing Stream Data' as Issue
FROM STC 
WHERE SpotifyStreams IS NULL
ORDER BY TrackID;

-- EXAMPLES OF IDENTIFICATION ISSUES (Unusable/Corrupted Text Data)

SELECT TOP 5 
    TrackID, Track, Artist, AlbumName, SpotifyStreams, 'Corrupted Text' as Issue
FROM STC 
WHERE Track LIKE '%ý%' 
   OR Artist LIKE '%ý%'
   OR AlbumName LIKE '%ý%'
ORDER BY TrackID;

-- EXAMPLES OF CLEAN DATA (Usable Data)

SELECT TOP 5
    TrackID, Track, Artist, AlbumName, SpotifyStreams, 'Clean Data' as Status
FROM STC 
WHERE Track NOT LIKE '%ý%' 
  AND Artist NOT LIKE '%ý%'
  AND AlbumName NOT LIKE '%ý%'
  AND SpotifyStreams IS NOT NULL
ORDER BY SpotifyStreams DESC;

/*
=============================================================================
Interpretation of Results:

- 96% of data is fully usable for analysis
- Corruption affects text fields but not numeric data
- Numeric data issues were caused by missing data (null fields)
- Sufficient clean data remains for meaningful music industry insights
- Demonstrates solutions to real-world data quality challenges
=============================================================================
*/
