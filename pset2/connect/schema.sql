CREATE TABLE IF NOT EXISTS "users"(
    id INTEGER NOT NULL UNIQUE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    user_name TEXT NOT NULL UNIQUE,
    school_affliliation INTEGER,
    school_start_date TEXT,
    school_end_date TEXT,
    school_degree TEXT,
    company_affiliation INTEGER,
    company_start_date TEXT,
    comapny_end_date TEXT,
    company_title TEXT
    password TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("school_affliliation") REFERENCES "schools_universities"("id"),
    FOREIGN KEY("company_affiliation") REFERENCES "companies"("id")
);

CREATE TABLE IF NOT EXISTS "user_connections"(
    user_id INTEGER NOT NULL,
    connection_id INTEGER NOT NULL,
    PRIMARY KEY("user_id", "connection_id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("connection_id") REFERENCES "users"("id")

);

CREATE TABLE IF NOT EXISTS "schools_universities"(
    id INTEGER NOT NULL UNIQUE,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    location TEXT NOT NULL,
    year_founded TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "companies"(
    id INTEGER NOT NULL UNIQUE,
    name TEXT NOT NULL,
    industry TEXT NOT NULL,
    location TEXT NOT NULL,
    PRIMARY KEY("id")
);
