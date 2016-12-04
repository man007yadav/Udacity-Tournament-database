-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Database creation
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

-- table for players
CREATE TABLE players (
    player_id SERIAL primary key, 
    player_name text
    );

-- table for matches
CREATE TABLE matches (
    match_id SERIAL primary key, 
    winner INTEGER references players(player_id), 
    loser INTEGER references players(player_id)
    );

-- select win_rank.player_id,win_rank.player_name,win_rank.win_count,count(loser) as loss_count from matches 
--FULL JOIN (select player_id,player_name,count(winner) as win_count from matches 
--FULL JOIN players on winner=player_id group by player_id,player_name order by win_count)as win_rank on matches.loser=win_rank.player_id group by win_rank.player_id,win_rank.player_name,win_rank.win_count order by win_rank.win_count desc;
