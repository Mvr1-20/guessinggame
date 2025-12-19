#!/usr/bin/env bash

# Function to count files
count_files() {
  echo $(ls -1 | wc -l)
}

file_count=$(count_files)

echo "Guess how many files are in the current directory:"

while true
do
  read guess

  if [[ $guess -lt $file_count ]]
  then
    echo "Too low. Try again:"
  elif [[ $guess -gt $file_count ]]
  then
    echo "Too high. Try again:"
  else
    echo "Congratulations! You guessed the correct number of files 🎉"
    break
  fi
done
