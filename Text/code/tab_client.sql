CREATE TYPE Gender AS enum ('м','ж');
CREATE TABLE Client
(
    U_ID     SERIAL PRIMARY KEY,
    U_LNAME  VARCHAR(30) NOT NULL,
    U_FNAME  VARCHAR(30) NOT NULL,
    U_PATRO  VARCHAR(30),
    U_BORN   DATE        NOT NULL,
    U_GENDER Gender      NOT NULL,
    U_LOGIN  VARCHAR(30) NOT NULL UNIQUE,
    U_MAIL   VARCHAR(30) NOT NULL UNIQUE
        CHECK ( U_MAIL ~ '^[A-Za-z0-9._-]+@[A-Za-z0-9.-]+$'),
    U_PASS   VARCHAR(30) NOT NULL
);