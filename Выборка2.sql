/*название и продолжительность самого длительного трека;*/
select name, duration from songs
where duration = (select max(duration) from songs);

/*название треков, продолжительность которых не менее 3,5 минуты;*/
SELECT name AS song_name FROM songs
WHERE duration >= 3.5*60;

/*названия сборников, вышедших в период с 2018 по 2020 год включительно;*/
SELECT name AS collection_name, year_of AS release_year FROM collection
WHERE year_of BETWEEN 2018 AND 2020;

/*исполнители, чье имя состоит из 1 слова;*/
SELECT name AS band_name FROM bands
WHERE name NOT LIKE '% %';

/*название треков, которые содержат слово "мой"/"my".*/
SELECT name FROM songs
WHERE name ILIKE 'my %' OR name ILIKE '% my' OR name ILIKE '% my %' OR name = 'my'
OR name ILIKE 'мой %' OR name ILIKE '% мой' OR name ILIKE '% мой %' OR name = 'мой';
