-- Tabelle zur Speicherung der Episoden
CREATE TABLE episodes (
    episode_id SERIAL PRIMARY KEY,
    season_number INT NOT NULL,
    episode_number INT NOT NULL,
    episode_title_en VARCHAR(255),
    episode_title_de VARCHAR(255)
);

-- Tabelle zur Speicherung der Charaktere
CREATE TABLE characters (
    character_id SERIAL PRIMARY KEY,
    character_name_en VARCHAR(255),
    character_name_de VARCHAR(255)
);

-- Tabelle zur Speicherung der Moral am Ende jeder Episode
CREATE TABLE morals (
    moral_id SERIAL PRIMARY KEY,
    episode_id INT REFERENCES episodes(episode_id),
    character_id INT REFERENCES characters(character_id),
    moral_text_en TEXT,
    moral_text_de TEXT
);