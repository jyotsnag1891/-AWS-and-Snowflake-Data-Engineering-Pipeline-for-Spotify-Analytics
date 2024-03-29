create or replace TABLE SPOTIFY_ETL_PROJ.PUBLIC.TBLALBUM (
	ALBUM_ID VARCHAR(100),
	NAME VARCHAR(100),
	RELEASE_DATE TIMESTAMP,
	TOTAL_TRACKS NUMBER(38,0),
	URL VARCHAR(200)
)COMMENT='Spotify ALBUM TABLE'
;


CREATE OR REPLACE TABLE TBLARTIST(
artist_id VARCHAR(50),
artist_name VARCHAR(50),
external_url VARCHAR(150)
)
COMMENT = 'Spotify Artist Table';


CREATE OR REPLACE TABLE TBLSONGS(
song_id VARCHAR(50),
song_name VARCHAR(50),
duration_ms INTEGER,
url VARCHAR(150),
popularity INTEGER,
song_added TIMESTAMP,
album_id VARCHAR(50),
artist_id VARCHAR(50)
)
COMMENT = 'Spotify Songs Table';
