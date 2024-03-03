-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years NUMERIC NOT NULL,
  orbits_around INTEGER REFERENCES planets(id),
  galaxy TEXT NOT NULL
);

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_days NUMERIC NOT NULL,
  orbits_around INTEGER REFERENCES planets(id)
);

INSERT INTO planets (name, orbital_period_in_years, orbits_around, galaxy)
VALUES
  ('Earth', 1.00, NULL, 'Milky Way'),
  ('Mars', 1.88, NULL, 'Milky Way'),
  ('Venus', 0.62, NULL, 'Milky Way'),
  ('Neptune', 164.8, NULL, 'Milky Way'),
  ('Proxima Centauri b', 0.03, NULL, 'Milky Way'),
  ('Gliese 876 b', 0.23, NULL, 'Milky Way');

INSERT INTO moons (name, orbital_period_in_days, orbits_around)
VALUES
  ('The Moon', 27.32, 1),
  ('Phobos', 0.319, 2),
  ('Deimos', 1.262, 2),
  ('Naiad', 0.294, 4),
  ('Thalassa', 0.311, 4),
  ('Despina', 0.335, 4),
  ('Galatea', 0.429, 4),
  ('Larissa', 0.555, 4),
  ('S/2004 N 1', 0.936, 4),
  ('Proteus', 1.122, 4),
  ('Triton', 5.876, 4),
  ('Nereid', 360.13, 4),
  ('Halimede', 1879.9, 4),
  ('Sao', 2913.6, 4),
  ('Laomedeia', 3171.3, 4),
  ('Psamathe', 9077.6, 4),
  ('Neso', 9370.9, 4);
\