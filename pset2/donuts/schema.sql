CREATE TABLE IF NOT EXISTS ingredients(
    id INTEGER NOT NULL UNIQUE,
    name TEXT NOT NULL UNIQUE,
    unit_ingredient TEXT NOT NULL,
    unit_price NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS donuts(
    id INTEGERNOT NULL UNIQUE,
    name TEXT NOT NULL UNIQUE,
    gluten_free TEXT NOT NULL CHECK(gluten_free = 'Y' | gluten_free = 'N'),
    price NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS recipes(
    id INTEGER NOT NULL UNIQUE,
    donut INTEGER NOT NULL,
    ingredient INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut") REFERENCES donuts("id"),
    FOREIGN KEY ("ingredient") REFERENCES ingredients("id")
);

CREATE TABLE IF NOT EXISTS customers(
    id INTEGER NOT NULL UNIQUE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS orders(
    id INTEGER NOT NULL UNIQUE,
    donut INTEGER NOT NULL,
    order_number VARCHAR(255)NOT NULL,
    customer INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY ("donut") REFERENCES donuts("id"),
    FOREIGN KEY ("customer") REFERENCES customers("id")
);
