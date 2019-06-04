CREATE TABLE TestMaterial
(
    T_ID                   SERIAL PRIMARY KEY,
    T_NAME                 VARCHAR(100) NOT NULL,
    T_TASK                 TEXT         NOT NULL,
    T_MAX                  INTEGER      NOT NULL CHECK ( T_MAX >= 0 ),
    T_DURATION             INTERVAL CHECK ( T_DURATION > '0'::INTERVAL ),
    T_VISIBILITY           BOOLEAN      NOT NULL DEFAULT FALSE,
    T_BLOCK                INTEGER      NOT NULL REFERENCES Block (B_ID),
    T_LECTURE_NEXT_ID      INTEGER REFERENCES Lecture (L_ID),
    T_TESTMETERIAL_NEXT_ID INTEGER REFERENCES TestMaterial (T_ID),
    CONSTRAINT T_NEXT_ONLYONE CHECK ( T_LECTURE_NEXT_ID IS NULL OR T_TESTMETERIAL_NEXT_ID IS NULL )
);