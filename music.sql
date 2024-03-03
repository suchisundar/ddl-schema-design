-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE producers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE songs (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration INTERVAL NOT NULL,
  release_date TIMESTAMP NOT NULL,
  album TEXT NOT NULL,
  artist_id INTEGER REFERENCES artists(id),
  producer_id INTEGER REFERENCES producers(id),
  genre_id INTEGER REFERENCES genres(id)
);

INSERT INTO artists (name) VALUES
  ('Hanson'),
  ('Queen'),
  ('Mariah Cary'),
  ('Boyz II Men'),
  ('Lady Gaga'),
  ('Bradley Cooper'),
  ('Nickelback'),
  ('Jay Z'),
  ('Alicia Keys'),
  ('Katy Perry'),
  ('Juicy J'),
  ('Maroon 5'),
  ('Christina Aguilera'),
  ('Avril Lavigne'),
  ('Destiny''s Child');

INSERT INTO producers (name) VALUES
  ('Dust Brothers'),
  ('Stephen Lironi'),
  ('Roy Thomas Baker'),
  ('Walter Afanasieff'),
  ('Benjamin Rice'),
  ('Rick Parashar'),
  ('Al Shux'),
  ('Max Martin'),
  ('Cirkut'),
  ('Shellback'),
  ('Benny Blanco'),
  ('The Matrix'),
  ('Darkchild');

INSERT INTO genres (name) VALUES
  ('Pop'),
  ('Rock'),
  ('R&B'),
  ('Hip Hop'),
  ('Country'),
  ('Jazz'),
  ('Blues'),
  ('Reggae'),
  ('Classical');

INSERT INTO songs (title, duration, release_date, album, artist_id, producer_id, genre_id) VALUES
  ('MMMBop', '00:03:58', '1997-04-15', 'Middle of Nowhere', 1, 1, 1),
  ('Bohemian Rhapsody', '00:05:55', '1975-10-31', 'A Night at the Opera', 2, 2, 2),
  ('One Sweet Day', '00:04:42', '1995-11-14', 'Daydream', 3, 3, 3),
  ('Shallow', '00:03:36', '2018-09-27', 'A Star Is Born', 4, 4, 4),
  ('How You Remind Me', '00:03:43', '2001-08-21', 'Silver Side Up', 5, 5, 5),
  ('New York State of Mind', '00:04:36', '2009-10-20', 'The Blueprint 3', 6, 6, 6),
  ('Dark Horse', '00:03:35', '2013-12-17', 'Prism', 7, 7, 7),
  ('Moves Like Jagger', '00:03:21', '2011-06-21', 'Hands All Over', 8, 8, 8),
  ('Complicated', '00:04:04', '2002-05-14', 'Let Go', 9, 9, 9),
  ('Say My Name', '00:04:00', '1999-11-07', 'The Writing''s on the Wall', 10, 10, 10);
