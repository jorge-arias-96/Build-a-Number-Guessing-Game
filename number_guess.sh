#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read NAME

NUMBER=$(( RANDOM % 1000 + 1 ))
#echo "$NUMBER"
COUNTER=1


USERNAME_AVA=$($PSQL "SELECT username FROM users WHERE username = '$NAME'")
MIN_GUESSES=$($PSQL "SELECT MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE username = '$NAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username = '$NAME'")


if [[ -z $USERNAME_AVA ]]
then
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$NAME')")
  echo "Welcome, $NAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME_AVA! You have played $GAMES_PLAYED games, and your best game took $MIN_GUESSES guesses."
fi

echo "Guess the secret number between 1 and 1000:"

while read GUESS
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then 
    echo -n "That is not an integer, guess again:"
    COUNTER=$((COUNTER+ 1))
  elif [[ $GUESS -eq $NUMBER ]]
  then
    break;
  else
    if [[ $GUESS -gt $NUMBER ]]
    then
      echo -n "It's lower than that, guess again:"
      COUNTER=$((COUNTER+ 1))
    elif [[ $GUESS -lt $NUMBER ]]
    then
      echo  -n "It's higher than that, guess again:"
      COUNTER=$((COUNTER+ 1))
    fi
  fi 
  #COUNTER=$((COUNTER+ 1))
done

USERNAME_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$NAME'")
INSERT_GUESSES=$($PSQL "INSERT INTO games(guesses,user_id) VALUES($COUNTER, $USERNAME_ID)")
echo "You guessed it in $COUNTER tries. The secret number was $NUMBER. Nice job!"
