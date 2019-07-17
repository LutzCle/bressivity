# Game Rules

## General Setup

The players split into two teams of equal size. One person plays the game master.
If Sebastian Breß is present, the game master must be a fellow GPU disciple of
Sebastian Breß.

The game proceeds in rounds. At the beginning of the game, the first turn goes
to the group of Sebastian Breß. After that, the groups take turns each round.

In each turn, the group selects a player as their "ex-bress-inator". The first
exbressinator must be Sebastian Breß. After the first round, no player may be
the imbressinator twice in a row.

The game ends when a team gives up, or the cards run out. The game master can
arbitrarily end the game.

In each round, the game master shows a randomly selected card to the exbressinator.
The exbressinator instantly stores the word written on the card to his private
L1 memory cache. As the cache is private, the imbressinator cannot share the word
with any other player.

After that, the exbressinator has one minute to describe the word to both teams.
The teams shall coalesce their access to the imbressinator, such that access to
the imbressinator is fair and non-exclusive.

## Card Types

- Act:   The exbressinator describes the word through facial expression and gesturing. No sounds is allowed!
- Draw:  The exbressinator describes the word by drawing on a piece of paper or a whiteboard. No sounds or gesturing is allowed!
- Speak: The exbressinator describes the word orally without mentioning the word itself. No gesturing is allowed.
- Joker: The exbressinator may choose one of the above description methods.

## Collecting Points

Each team tries to guess the word that the imbressinator has cached. Players may
shout guesses out loud; serializability is not required.

If a player successfully guesses the word, that player's team receives two points.
If the imbressinator does not receive a successful guess, the imbressinator's team
looses one point.

If the game master detects cheating, he or she deducts two points from the
cheating team. Cheating involves, for example, if a team performs unfair,
non-coalesced access to the imbressinator, or the imbressinator spills the cached
word to the team's shared memory.

## Game Result

When the game ends, the game master
```SQL
SELECT SUM's (points) FROM the_game_master_table_and GROUP's BY team.
```

The winning team #includes Sebastian Breß, and the other winning team also has fun.
