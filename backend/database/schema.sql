BEGIN TRANSACTION;

DROP TABLE IF EXISTS photos;

CREATE TABLE photos (
        title varchar(32) PRIMARY KEY,
        location varchar(64) NOT NULL,
        description varchar(256) NOT NULL 
);

COMMIT TRANSACTION;

INSERT INTO photos (title, location, description)
VALUES ('Engagement', 'Malibu, CA', 'The best day of my life...she said YES!!');

INSERT INTO photos (title, location, description)
VALUES ('Whitney', 'Detroit, MI', 'Dinner date at The Whitney before a show.');

INSERT INTO photos (title, location, description)
VALUES ('MSUGame', 'East Lansing, MI', 'Getting dragged to my first MSU football.  Of course it was the coldest day of the year :(');

INSERT INTO photos (title, location, description)
VALUES ('Geoffreys2', 'Malibu, CA', 'Enjoying a post-engagement lunch at Geoffrey''s Malibu');

INSERT INTO photos (title, location, description)
VALUES ('NYEGwen', 'Los Angeles, CA', 'NYE dinner at Gwen Restaurant.');

INSERT INTO photos (title, location, description)
VALUES ('NYEParty', 'Hollywood, CA', 'Partying it up at The Roosevelt NYE2019');

INSERT INTO photos (title, location, description)
VALUES ('Albena', 'Detroit, MI', 'Arriving for dinner at Albena');

INSERT INTO photos (title, location, description)
VALUES ('trainStation', 'San Diego, CA', 'At the Santa Fe Depot waiting to board the Pacific Surfliner to LA.');

INSERT INTO photos (title, location, description)
VALUES ('zingermans', 'Ann Arbor, MI', 'Learning to bake some cookies at Zingerman''s.');

INSERT INTO photos (title, location, description)
VALUES ('franklinCider', 'Franklin, MI', 'Getting our cider and donuts on at Franklin Cider Mill.  Gotta love those cider mill donuts!!');

INSERT INTO photos (title, location, description)
VALUES ('Christmas2019', 'Grosse Pointe, MI', 'Appropriate outfits for Christmas 2019.');

INSERT INTO photos (title, location, description)
VALUES ('suttonsBay', 'Suttons Bay, MI', 'Getting blown away by the wind on Sutton''s Bay');

INSERT INTO photos (title, location, description)
VALUES ('firstMail', 'Royal Oak, MI', 'Our first piece of co-addressed mail!');
