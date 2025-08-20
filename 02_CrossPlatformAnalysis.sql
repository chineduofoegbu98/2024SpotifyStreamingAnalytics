/*
=============================================================================
2024 SPOTIFY STREAMING DATA - CROSS PLATFORM PERFORMANCE ANALYSIS
=============================================================================
Purpose: Comparing performance across streaming platforms to identify optimal artist strategy
Dataset: Spotify Most Streamed Songs (3,463 tracks with complete cross-platform data)
Author: Chinedu Ofoegbu
Date: 20/08/2025

Business Problem: 

Artists and labels need to determine which streaming platforms 
give the best opportunities for engagement to implement different content strategies.
Which platform should artist/s prioritise for maximum reach and viral potential?

Key Skills:
- Cross-platform data analysis (In Implementation of views)
- Database view creation for clean datasets
- UNION ALL for comparative reporting
- Use of aggregate functions (AVG, MAX, COUNT)
- Strategic interpretation of data
- Filtering logic

=============================================================================
*/

-- 1: CROSS PLATFORM VIEW
--  For a fair comparison by including only tracks with complete data across all the platforms

CREATE VIEW vw_CPSTC AS
SELECT *
FROM STC
WHERE Track NOT LIKE '%ý%'                    -- Clean track names
    AND Artist NOT LIKE '%ý%'                 -- Clean artist names  
    AND (AlbumName NOT LIKE '%ý%' OR AlbumName IS NULL)  -- Clean or missing album names (acceptable as row of data still existent as track)
    AND SpotifyStreams IS NOT NULL            -- Must have Spotify data
    AND YoutubeViews IS NOT NULL              -- Must have YouTube data
    AND TiktokViews IS NOT NULL;              -- Must have TikTok data

-- Check that view contains only complete, clean data

SELECT 'vw_CPSTC Tracks' AS Metric, COUNT(*) AS Count FROM vw_CPSTC;

-- 2: COMPARING CROSS PLATFORM PERFORMANCE 

-- Build a table with Left Column Displaying Platforms, and 3 more columns displaying results of aggregate funtions
-- Using vw_CPSTC view for fair comparison across all platforms

SELECT 'SpotifyStreams' AS Platform,
    AVG(SpotifyStreams) AS AvgStreams,
    MAX(SpotifyStreams) AS MaxStreams,
    COUNT(*) AS TracksWithData
FROM vw_CPSTC

UNION ALL

SELECT 'YoutubeViews' AS Platform, 
    AVG(YoutubeViews) AS AvgStreams,
    MAX(YoutubeViews) AS MaxStreams,
    COUNT(*) AS TracksWithData
FROM vw_CPSTC

UNION ALL

SELECT 'TiktokViews' AS Platform, 
    AVG(TiktokViews) AS AvgStreams,
    MAX(TiktokViews) AS MaxStreams,
    COUNT(*) AS TracksWithData
FROM vw_CPSTC

ORDER BY AvgStreams DESC;

/*
=============================================================================
RESULTS:

Platform        | AvgStreams  | MaxStreams     | TracksWithData
----------------|-------------|----------------|---------------
TiktokViews     | 1,127,279,167| 233,232,311,463| 3,463
SpotifyStreams  | 513,341,809 | 4,281,468,720  | 3,463
YoutubeViews    | 431,618,235 | 16,322,756,555 | 3,463

=============================================================================
MAIN FINDINGS:

PLATFORM PERFORMANCE:
• TikTok dominates with 1.12B average views (2.6x higher than YouTube)
• Spotify provides steady 513M average streams  
• YouTube shows 432M average views

VIRAL POTENTIAL:
• TikTok: 233B max views (best viral reach)
• YouTube: 16.3B max views (strong video potential)
• Spotify: 4.3B max streams (consistent growth)

RECOMMENDATIONS FOR FUTURE STRATEGY:

For Newer Artists:    Start with Tiktok then convert engagament over to Spotify and support this with content on Youtube (Shorts for example)
Established Artists:    Multi-platform approach factoring in and utilising the strengths of each platform
Strategy for content:   TikTok (viral content) | Spotify (full songs/actual product) | YouTube (videos and shorts)

INVESTMENT RISK ASSESSMENT:
• TikTok: High risk, massive reward potential
• Spotify: Low risk, reliable steady income
• YouTube: Medium risk

=============================================================================
*/