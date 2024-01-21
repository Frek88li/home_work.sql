CREATE TABLE IF NOT EXISTS executer (
    executer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    name_nickname VARCHAR(40) NULL
);

CREATE TABLE IF NOT EXISTS Genres (
    genres_id SERIAL PRIMARY KEY,
    title varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres_executor (
    category_id SERIAL PRIMARY KEY,
    executer_id INTEGER NOT NULL references executer(executer_id),
    genres_id INTEGER NOT NULL references genre(genres_id)
);

CREATE TABLE IF NOT EXISTS Album (
    album_id SERIAL PRIMARY KEY, 
    list_album VARCHAR(50) NOT NULL,
    year INTEGER CHECK (year > 0)
);

CREATE TABLE IF NOT EXISTS Executer_album (
    Executer_albym_id SERIAL PRIMARY KEY,
    executer_id INTEGER NOT NULL REFERENCES executer(executer_id),
    album_id INTEGER NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS track (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS table (
	table_id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES collection(collection_id),
	track_id INTEGER NOT NULL REFERENCES track(track_id)
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year INTEGER CHECK (year > 0)
);


