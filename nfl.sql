-- 1. List the names of all NFL teams'
SELECT teams.name FROM teams;
'         name
----------------------
 Buffalo Bills
 Miami Dolphins
 New England Patriots
 New York Jets
 Baltimore Ravens
 Cincinnati Bengals
 Cleveland Browns
 Pittsburgh Steelers
 Houston Texans
 Indianapolis Colts
 Jacksonville Jaguars
 Tennessee Titans
 Denver Broncos
 Kansas City Chiefs
 Oakland Raiders
 San Diego Chargers
 Dallas Cowboys
 New York Giants
 Philadelphia Eagles
 Washington Redskins
 Chicago Bears
 Detroit Lions
 Green Bay Packers
 Minnesota Vikings
 Atlanta Falcons
 Carolina Panthers
 New Orleans Saints
 Tampa Bay Buccaneers
 Arizona Cardinals
 St. Louis Rams'

-- 2. List the stadium name and head coach of all NFC teams
SELECT teams.stadium, teams.head_coach FROM teams;
'            stadium            |   head_coach
-------------------------------+----------------
 Ralph Wilson Stadium          | Doug Marrone
 Sun Life Stadium              | Joe Philbin
 Gillette Stadium              | Bill Belichick
 MetLife Stadium               | Rex Ryan
 M&T Bank Stadium              | John Harbaugh
 Paul Brown Stadium            | Marvin Lewis
 FirstEnergy Stadium           | Mike Pettine
 Heinz Field                   | Mike Tomlin
 NRG Stadium                   | Bill OBrien
 Lucas Oil Stadium             | Chuck Pagano
 EverBank Field                | Gus Bradley
 LP Field                      | Ken Whisenhunt
 Sports Authority Field        | John Fox
 Arrowhead Stadium             | Andy Reid
 O.co Coliseum                 | Tony Sparano
 Qualcomm Stadium              | Mike McCoy
 AT&T Stadium                  | Jason Garrett
 MetLife Stadium               | Tom Coughlin
 Lincoln Financial Field       | Chip Kelly
 FedExField                    | Jay Gruden
 Soldier Field                 | Marc Trestman
 Ford Field                    | Jim Caldwell
 Lambeau Field                 | Mike McCarthy
 TCF Bank Stadium              | Mike Zimmer
 Georgia Dome                  | Mike Smith
 Bank of America Stadium       | Ron Rivera
 Mercedes-Benz Superdome       | Sean Payton
 Raymond James Stadium         | Lovie Smith
 University of Phoenix Stadium | Bruce Arians
 Edward Jones Dome             | Jeff Fisher'

-- 3. List the head coaches of the AFC South
  SELECT head_coach FROM teams 
  WHERE division = 'South' AND conference = 'AFC';
  ' Bill OBrien
 Chuck Pagano
 Gus Bradley
 Ken Whisenhunt
(4 rows)'

-- 4. The total number of players in the NFL
  SELECT COUNT(*) AS total_players FROM players;
'1532'

-- 5. The team names and head coaches of the NFC North and AFC East
SELECT teams.name, teams.head_coach 
FROM teams 
WHERE division = 'North' AND conference = 'NFC';
'       name        |  head_coach
-------------------+---------------
 Chicago Bears     | Marc Trestman
 Detroit Lions     | Jim Caldwell
 Green Bay Packers | Mike McCarthy
 Minnesota Vikings | Mike Zimmer
 '
SELECT teams.name, teams.head_coach 
FROM teams 
WHERE division = 'East' AND conference = 'AFC';
'         name         |   head_coach
----------------------+----------------
 Buffalo Bills        | Doug Marrone
 Miami Dolphins       | Joe Philbin
 New England Patriots | Bill Belichick
 New York Jets        | Rex Ryan'

-- 6. The 50 players with the highest salaries
SELECT NAME FROM players ORDER BY salary DESC LIMIT 50;
  ' name
-------------------------
 Peyton Manning
 Drew Brees
 Dwight Freeney
 Elvis Dumervil
 Michael Vick
 Sam Bradford
 Jared Allen
 Matt Ryan
 Matthew Stafford
 Tamba Hali
 Jake Long
 Nnamdi Asomugha
 Trent Williams
 Vincent Jackson
 Cliff Avril
 Calais Campbell
 Joe Thomas
 Brent Grimes
 Peyton Manning (buyout)
 Chris Long
 Philip Rivers
 Jason Smith
 David Harris
 Wes Welker
 Davin Joseph
 Dwayne Bowe
 Asante Samuel
 Brandon Marshall
 Ndamukong Suh
 Tony Romo
... it continues'

-- 7. The average salary of all NFL players
SELECT AVG(salary) FROM players;
 '         avg
----------------------
 1579692.539817232376'

-- 8. The names and positions of players with a salary above 10_000_000
SELECT players.name, players.position FROM players WHERE salary >=10000000;
'          name           | position
-------------------------+----------
 Jake Long               | T
 Joe Thomas              | T
 Dwight Freeney          | DE
 Peyton Manning (buyout) | QB
 Peyton Manning          | QB
 Elvis Dumervil          | DE
 Tamba Hali              | DE
 Philip Rivers           | QB
 Michael Vick            | QB
 Nnamdi Asomugha         | CB
 Trent Williams          | T
 Matthew Stafford        | QB
 Cliff Avril             | DE
 Jared Allen             | DE
 Matt Ryan               | QB
 Brent Grimes            | CB
 Drew Brees              | QB
 Vincent Jackson         | WR
 Calais Campbell         | DE
 Sam Bradford            | QB
 Chris Long              | DE
 Jason Smith             | T
(22 rows)'

-- 9. The player with the highest salary in the NFL
SELECT NAME FROM players ORDER BY salary DESC LIMIT 1;
'Peyton Manning'
 
-- 10. The name and position of the first 100 players with the lowest salaries
SELECT NAME, position FROM players ORDER BY salary ASC LIMIT 100;
  '          name          | position
------------------------+----------
 Phillip Dillard        |
 Eric Kettani           | RB
 Austin Sylvester       | RB
 Greg Orton             | WR
 Jerrod Johnson         | QB
 McLeod Bethel-Thompson | QB
 Jonathan Crompton      | QB
 Travon Bellamy         | CB
 Caleb King             | RB
 Mike Mohamed           | LB
 Kyle Nelson            | LS
 John Malecki           | G
 etc....'

-- 11. The average salary for a DE in the nfl
  SELECT AVG(salary) FROM players WHERE position = 'DE';
  '         avg
----------------------
 2161326.377049180328'

-- 12. The names of all the players on the Buffalo Bills
-- Ugh this took forever
SELECT players.name
FROM players
INNER JOIN teams ON players.team_id = teams.id
WHERE teams.name = 'Buffalo Bills';
'        name
--------------------
 Mario Williams
 Drayton Florence
 Shawne Merriman
 Dwan Edwards
 Chris Kelsay
 Kyle Williams
 Nick Barnett'

-- 13. The total salary of all players on the New York Giants
SELECT AVG(salary) 
FROM players
INNER JOIN teams ON players.team_id = teams.id
WHERE teams.name = 'New York Giants';
'         avg
----------------------
 1483589.320000000000
(1 row)'

-- 14. The player with the lowest salary on the Green Bay Packers
 
SELECT players.name
FROM players
INNER JOIN teams ON players.team_id = teams.id
WHERE teams.name = 'New York Giants'
ORDER BY players.salary ASC
LIMIT 1;

'      name
-----------------
 Phillip Dillard
(1 row)'