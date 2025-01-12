#!/usr/bin/env bash
# File: guessinggame.sh

function guess_files {
    local file_count=$(ls -1 | wc -l)
    while true; do
        echo "Guess how many files are in the current directory:"
        read user_guess
        if [[ $user_guess -eq $file_count ]]; then
            echo "Congratulations! You guessed it right."
            break
        elif [[ $user_guess -lt $file_count ]]; then
            echo "Too low. Try again."
        else
            echo "Too high. Try again."
        fi
    done
}

guess_files
