CREATE OR REPLACE PIPE PIPE_ALBUM
AUTO_INGEST = TRUE
AS
COPY INTO TBLALBUM 
FROM @SPOTIFY_ETL_PROJ.PUBLIC.CSV_FOLDER_ALB
ON_ERROR = 'continue';


CREATE OR REPLACE PIPE PIPE_ARTIST
AUTO_INGEST = TRUE
AS
COPY INTO TBLARTIST
FROM @SPOTIFY_ETL_PROJ.PUBLIC.CSV_FOLDER_ART;


CREATE OR REPLACE PIPE PIPE_SONGS
AUTO_INGEST = TRUE
AS
COPY INTO TBLSONGS
FROM @SPOTIFY_ETL_PROJ.PUBLIC.CSV_FOLDER_SONGS
ON_ERROR = 'continue';

DESC PIPE PIPE_ALBUM;
DESC PIPE PIPE_ARTIST;
DESC PIPE PIPE_SONGS;

select * from tblalbum;
SELECT * FROM TBLARTIST;
SELECT * FROM TBLSONGS;
