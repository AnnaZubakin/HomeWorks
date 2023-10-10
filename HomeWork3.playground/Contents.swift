import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var deposit = 500000.00
var rate = 0.05
var period = 5


for _ in 1...period {
    deposit = deposit * rate + deposit
}

let depositFormated = String(format: "%.2f", deposit)
var profit = deposit - 500000.00
let profitFormated = String(format: "%.2f", profit)


print("Amount of income after \(period) years will be \(profitFormated) Eur. My total deposit will be \(depositFormated) Eur!")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let numbers = [1, 5, 8, 12, 13, 17, 20]

var evenNumbers = [Int]()

for number in numbers {
    if number % 2 == 0 {
        evenNumbers.append(number)
    }
}

print("My even numbers are: \(evenNumbers)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter = 0

while true {
    let randomNumber = Int.random(in: 1...10)
    counter += 1
    
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var bugHeight = 0
let postHeight = 10
var numberOfDays = 0

while bugHeight < postHeight {
    numberOfDays += 1
    bugHeight += 2
    if bugHeight >= postHeight {
        print("bug will spend \(numberOfDays) to reach top of the post")
        break
    }
    bugHeight -= 1
}
