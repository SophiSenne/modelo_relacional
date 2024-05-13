CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(20) NOT NULL,
    registration_date DATE NOT NULL,
    name VARCHAR(100),
    social_name VARCHAR(100),
    cellphone_number VARCHAR(20),
    country VARCHAR(50),
    state VARCHAR(100),
    city VARCHAR(100),
    neighborhood VARCHAR(100),
    education VARCHAR(50),
    family_constitution VARCHAR(50),
    family_income VARCHAR(20),
    housing_type VARCHAR(30),
    residents_number INTEGER,
    adm VARCHAR(10),
    choice VARCHAR(10)
);

CREATE TABLE past (
    id SERIAL PRIMARY KEY,
    price INT,
    why_bought TEXT,
    pet_characteristics TEXT,
    most_liked TEXT,
    didnt_like TEXT,
    when_stopped_living DATE,
    new_dog TEXT,
    id_dogs INTEGER REFERENCES dogs(id),
    id_users INTEGER REFERENCES users(id)
);

CREATE TABLE present (
    id SERIAL PRIMARY KEY,
    dog_age INTEGER,
    why_you_have TEXT,
    what_pleased TEXT,
    who_decided TEXT,
    didnt_keep_dog TEXT,
    say_about_dog TEXT,
    times_veterinarian_last_year INTEGER,
    id_dogs INTEGER REFERENCES dogs(id),
    id_users INTEGER REFERENCES users(id)
);

CREATE TABLE future (
    id SERIAL PRIMARY KEY,
    physical_characteristics VARCHAR(150),
    why_would_have TEXT,
    name VARCHAR(30),
    buy_adopt VARCHAR(20),
    when YEAR,
    personality TEXT,
    monthly_expenses VARCHAR(50),
    id_users INTEGER REFERENCES users(id)
);

CREATE TABLE null (
    id SERIAL PRIMARY KEY,
    why_not TEXT,
    id_users INTEGER REFERENCES users(id)
);

CREATE TABLE dogs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    neutered VARCHAR(10),
    time_with INTEGER,
    first_dog VARCHAR(10),
    breed VARCHAR(30),
    origin VARCHAR(100),
    paid VARCHAR(30),
    age_arrived INTEGER,
    personality TEXT,
    more_pets INTEGER,
    id_users INTEGER REFERENCES users(id)
);
