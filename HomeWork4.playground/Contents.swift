import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam: String = "Girls"
var resultsOfGames: [String: [String]] = [
"Brooklyn Nets": ["99:89", "109:99"],
"Dallas Mavericks": ["87:93", "104:97"],
"Washington Wizards": ["117:112", "107:122"]
]

for (teamName, scores) in resultsOfGames {
    for score in scores {
        print("\(myTeam) against \(teamName) scored \(score)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 (all available paper notes(banknotes) from 5 till 500)
 */

func calculateCash(in wallet: [Int]) -> Int  {
    var cashSumma = 0
    
    for banknote in wallet {
        cashSumma += banknote
    }
    return cashSumma
}

var moneyInWallet: [Int] = [5, 10, 20, 50, 100, 200, 500]
let howManyCash = calculateCash(in: moneyInWallet)
print("In my wallet is \(howManyCash) Eur")


/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
}

let testNumber = 9

if isEvenNumber(testNumber) {
    print("\(testNumber) is an even number")
} else {
    print("\(testNumber) is an odd number")
}

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from start: Int, to end: Int) -> [Int] {
    var finalArray = [Int]()
    for number in start...end {
        finalArray.append(number)
    }
    return finalArray
}

var newArray = createArray(from: 1, to: 100)
print(newArray)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for number in newArray {
    if isEvenNumber(number) {
        if var index = newArray.firstIndex(of: number) {
            newArray.remove(at: index)
        }
    }
}
print(newArray)
