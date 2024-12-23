CREATE TABLE IF NOT EXISTS "passengers"(
    id INTEGER NOT NULL UNIQUE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "check_ins"(
    id INTEGER NOT NULL UNIQUE,
    date_time TEXT NOT NULL,
    flight_id INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE IF NOT EXISTS "airlines"(
    id INTEGER NOT NULL UNIQUE,
    airlines TEXT NOT NULL,
    concourse TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "flights"(
    id INTEGER NOT NULL UNIQUE,
    flight_number INTEGER NOT NULL,
    depart_code TEXT NOT NULL,
    land_code TEXT NOT NULL,
    depart_time TEXT NOT NULL,
    land_time TEXT NOT NULL,
    PRIMARY KEY("id")
);
