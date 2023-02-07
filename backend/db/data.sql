CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    email VARCHAR(32) NOT NULL UNIQUE,
    name VARCHAR(32) NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_recipes INTEGER[],
    fav_recipes INTEGER[],
    comments INTEGER[]
);

CREATE TABLE recipes(
    id SERIAL PRIMARY KEY,
    name VARCHAR(32) NOT NULL,
    description VARCHAR(500) NOT NULL,
    nationality VARCHAR(32),
    main_ingr VARCHAR(32),
    ingr VARCHAR(32) ARRAY,
    food_time CHAR,
    difficulty INTEGER,
    time_taken INTEGER,
    rating INTEGER,
    created_at DATE
);