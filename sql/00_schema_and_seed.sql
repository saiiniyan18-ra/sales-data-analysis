
-- Sales Data Analysis Project
-- Database schema and seed data

CREATE TABLE reps (
    rep_id INTEGER,
    rep_name VARCHAR(50),
    region VARCHAR(20),
    monthly_target INTEGER
);

CREATE TABLE products (
    item VARCHAR(50),
    category VARCHAR(20),
    unit_price INTEGER
);
