import UIKit

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */



enum CalculationType {
    case addition
    case subtraction
    case multiplication
    case division
}

func calculateResult(firstNumber numberOne: Int, andSecondNumber secondNumber: Int, withCalculationType calculationType: CalculationType) -> Int {
    
    var result = numberOne
    
    switch calculationType {
    case .addition:
        result += secondNumber
    case .subtraction:
        result -= secondNumber
    case .multiplication:
        result *= secondNumber
    case .division:
        if secondNumber != 0 {
            result /= secondNumber
        } else {
            print("Error: Division by zero is not allowed.")
            return 0
        }
    }
    
    print("Result: \(calculationType) \(numberOne) and \(secondNumber) = \(result)")
    return result
}



/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/


let numberOne = 10
let numberTwo = 5


let additionResult = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .addition)
let subtractionResult = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .subtraction)
let multiplicationResult = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .multiplication)
let divisionResult = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .division)




/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */

struct Car {
    
    var name: String?
    var productionYear: Int?
    var horsePower: Int?
    
    func getSpecs() {
        print("Car: \(name ?? ""), year \(productionYear ?? 0), horsePower \(horsePower ?? 0)")
    }
}

let Volvo = Car(name: "Volvo", productionYear: 2021, horsePower: 200)
Volvo.getSpecs()

let Toyota = Car(name: "Toyota", productionYear: 2019, horsePower: 150)
Toyota.getSpecs()
