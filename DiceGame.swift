//

// This program receives user guess from user.
// From information given, it checks to see if guess
// is the same as random number generated.

//
//  Created by Sarah Andrew

//  Created on 2023-02-27

//  Version 1.0

//  Copyright (c) 2023 Sarah. All rights reserved.
import Foundation

// Declare variables & initialize counter.
var counter = 0
let MAX_NUM = 6
let MIN_NUM = 1
var userGuess = 0

// Generate random number from 1 to 6.
let randNum = Int.random(in: 1..<6)

repeat {
    print("Enter a number between 1 and 6: ")

    // Usage of try catch to detect errors &
    // receive user input.
    if let guessUser = Int(readLine()!) {
        userGuess = guessUser
        // If statement to check if user guess
        // is in range. If not, display to ser.
        if userGuess < MIN_NUM || userGuess > MAX_NUM {
            print("Please enter number in specified range.")
            print("This guess does not count.")
        } else {
            // Increments counter.
            counter = counter + 1
            // If statement to see if user guess
            // is too high or low.
            if userGuess > randNum {
                print("Your guess is too high.")
                print()
            } else if userGuess < randNum {
                print("Your guess is too low.")
                print()
            } else {
                // Display correct guess to user
                // if random number is equalled to
                // user guess.
                print("Your guess was correct!")
                print("It took you ", counter, "tries.")
            }
        }

    } else {
        // Display error to user.
        print("Please enter valid input.")
    }
    // Loops back until user guess 
    // and random number are equal
    // to each other.
} while userGuess != randNum
