-------------------------------------------
----------Create the tables----------------
-------------------------------------------
DROP TABLE IF EXISTS team;

CREATE TABLE team (
        team_id serial NOT NULL,
        team_owner varchar(30) NOT NULL,
        CONSTRAINT pk_team_team_id PRIMARY KEY (team_id)
);

DROP TABLE IF EXISTS player;

CREATE TABLE player (
	player_id serial NOT NULL,
	first_name varchar(40) NOT NULL,
	last_name varchar (40) NOT NULL,
	urlNum integer NOT NULL,
	team_id integer NOT NULL,
	CONSTRAINT pk_player_player_id PRIMARY KEY (player_id)
);

ALTER TABLE player
ADD FOREIGN KEY (team_id)
REFERENCES team(team_id);

-------------------------------------------
----------Populate the tables--------------
-------------------------------------------

----------------------------Insert the teams

INSERT INTO team
       (team_owner)
VALUES ('Tyler');
INSERT INTO team
       (team_owner)
VALUES ('Ken');
INSERT INTO team
       (team_owner)
VALUES ('Ryan');
INSERT INTO team
       (team_owner)
VALUES ('Chris');
INSERT INTO team
       (team_owner)
VALUES ('Jason');

-------------------------Insert the players
-------Team Tyler
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Francisco', 'Lindor', 596019, 1);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Khris', 'Davis', 501981, 1);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Edwin', 'Encarnacion', 429665, 1);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Mike', 'Moustakas', 519058, 1);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Justin', 'Smoak', 475253, 1);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Marcell', 'Ozuna', 542303, 1);

-------Team Ken
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Nelson', 'Cruz', 443558, 2);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Mike', 'Trout', 545361, 2);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Kris', 'Bryant', 592178, 2);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Josh', 'Donaldson', 518626, 2);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Brian', 'Dozier', 572821, 2);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Charlie', 'Blackmon', 453568, 2);

-------Team Ryan
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Giancarlo', 'Stanton', 519317, 3);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Bryce', 'Harper', 547180, 3);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Paul', 'Goldschmidt', 502671, 3);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Anthony', 'Rizzo', 519203, 3);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Freddie', 'Freeman', 518692, 3);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Mookie', 'Betts', 605141, 3);

-------Team Chris
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Aaron', 'Judge', 592450, 4);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Cody', 'Bellinger', 641355, 4);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Manny', 'Machado', 592518, 4);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Gary', 'Sanchez', 596142, 4);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Justin', 'Upton', 457708, 4);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Joey', 'Votto', 458015, 4);

-------Team Jason
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Nolan', 'Arenado', 571448, 5);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('J.D.', 'Martinez', 502110, 5);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Joey', 'Gallo', 608336, 5);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Rhys', 'Hoskins', 656555, 5);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Miguel', 'Sano', 593934, 5);
INSERT INTO player
       (first_name, last_name, urlNum, team_id)
VALUES ('Matt', 'Olson', 621566, 5);