DROP DATABASE IF EXISTS music_player;
CREATE DATABASE music_player;

\c music_player;

CREATE TABLE artists (
          id SERIAL PRIMARY KEY,
        name TEXT,
       genre TEXT
);

CREATE TABLE albums (
          id SERIAL PRIMARY KEY,
   artist_id INTEGER REFERENCES artists(id),
       title TEXT,
        year INTEGER
);

CREATE TABLE songs (
          id SERIAL PRIMARY KEY,
       title TEXT,
    album_id INTEGER REFERENCES albums(id),
      length INTEGER,
    track_no INTEGER
);

-- CREATE TABLE playlist (
--           id SERIAL PRIMARY KEY,
--      song_id INTEGER,
--    artist_id INTEGER,
--     album_id INTEGER
-- );
