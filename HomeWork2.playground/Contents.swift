import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var firstFloat: Float = 5.16
var secondFloat: Float = 14.2

var summa: Double = Double(firstFloat) + Double(secondFloat)
print(summa)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne: Int = 13
var numberTwo: Int = 5
let divideResult: Int = numberOne / numberTwo
let reminderResult: Int = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(divideResult), the remainder is \(reminderResult)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

let quantityMacbook = 13
let priceMacbook = 1000
var costMacbook = 0

if quantityMacbook >= 10 {
    costMacbook = quantityMacbook * 850
} else if quantityMacbook >= 5 {
    costMacbook = quantityMacbook * 900
} else {
    costMacbook = quantityMacbook * priceMacbook
}

print("new \(quantityMacbook) MacBook Pro with the price of: \(priceMacbook) EUR, will cost you \(costMacbook) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

/* WRONG CONVERSION
var userInputAge = String "33a"
var convertToInt: Int(userInputAge)
*/

var userInputAge: String?
userInputAge = "33a"

var convertToInt = Int(userInputAge ?? "0")

if convertToInt == nil {
    print("userInputAge cannot be converted to Int value")
} else {
    print("userInputAge can be converted to Int value")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let birthYear = 1975
let birthMonth = 4
let birthDate = 13
let currentYear = 2023
let currentMonth = 10
let currentDate = 6
let daysInYear: Double = 365.25
let daysInMonth: Double = daysInYear / 12

var totalYearsFromBirth = currentYear - birthYear
var totalMonthFromBirth = totalYearsFromBirth * 12 + (currentMonth - birthMonth)
var totalYearsFromBirthDouble: Double = Double(totalYearsFromBirth)
var totalMonthsFromBirthDouble: Double = Double(totalMonthFromBirth)
var totalDaysFromBirth: Int = Int(totalMonthsFromBirthDouble * daysInMonth) + (currentDate - birthDate)

print("Total years: \(totalYearsFromBirth), total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
if birthMonth <= 3 {
    print ("I was born in the first quarter")
} else if birthMonth <= 6 {
    print ("I was born in the second quarter")
} else if birthMonth <= 9 {
    print ("I was born in the third quarter")
} else {
    print ("I was born in the fourth quarter")
}

/* another variant */

var quarter = ""

switch birthMonth {
case 1...3:
    quarter = "first"
case 4...6:
    quarter = "second"
case 7...9:
    quarter = "third"
case 10...12:
    quarter = "fourth"
default:
    break
}
print ("I was born in the \(quarter) quarter")
