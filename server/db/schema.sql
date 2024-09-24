-- DROP DATABASE
DROP DATABASE IF EXISTS pokemon_db;

-- CREATE DATABASE
CREATE DATABASE pokemon_db;

-- seeds

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE pokemonCard (
    card_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
);

CREATE TABLE collections (
    collection_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    card_id INT NOT NULL,
    quantity INT DEFAULT 1,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (card_id) REFERENCES pokemonCard(card_id)
)

CREATE TABLE decks (
    deck_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    deck_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
)

CREATE TABLE deckCards (
    deck_card_id SERIAL PRIMARY KEY,
    deck_id INT NOT NULL,
    card_id INT NOT NULL,
    FOREIGN KEY (deck_id) REFERENCES decks(deck_id),
    FOREIGN KEY (card_id) REFERENCES pokemonCard(card_id)
)