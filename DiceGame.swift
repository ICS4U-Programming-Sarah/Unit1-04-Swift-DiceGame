//

// This program calculates the amount of energy,
// produced with given mass.

//
//  Created by Sarah Andrew

//  Created on 2023-02-19

//  Version 1.0

//  Copyright (c) 2023 Sarah. All rights reserved.
import Foundation

// Declare variables & initalize counter.
var counter = 0
let MAX_NUM = 6
let MIN_NUM = 1

// Generate random number from 1 to 6.
let randNum = Int.random(in: 1..<6)

repeat {
    print("Enter a number between 1 and 6: ")

    if let userGuess = int(readLine()!) {
        if userGuess < MIN_NUM || userGuess > MAX_NUM {
            print("Please enter number in specified range.")
            print("This guess does not count.")
        } else {
            counter = counter + 1
            if userGuess > randNum {
                print("Your guess is too high.")
                print()
            } else if userGuess < randNum {
                print("Your guess is too low.")
                print()
            } else {
                print("Your guess was correct!")
                print("It took you ", counter, "tries")
            }
        }

    } else {
        print("Enter valid input.")
    }
} while userGuess != randNum
