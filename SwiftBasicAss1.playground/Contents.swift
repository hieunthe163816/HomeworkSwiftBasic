import UIKit


//< Declare four constants named x1, y1, x2 and y2 of type Double. These constants represent the 2-
//dimensional coordinates of two points. Calculate the distance between these two points
//and store the result in a constant named distance.

let x1: Double = 1.5
let y1: Double = 2.3
let x2: Double = -3.7
let y2: Double = 5.1

let distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))

print("The distance between the two points = \(distance)")



//Given a number n, calculate the factorial of n.

func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}
let n = 5
print("The factorial of \(n) is: \(factorial(n))")



//1. Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.
//2. What is Labeled statements? Using source code to explain.

var m = 0.0
var str: String = ""
for i in 0...10 {
    str += "\(m), "
    m += 0.1
}
print(str)


loop1: for i in 1...3 {
    loop2: for j in 1...3 {
        if j == 2 {
            break loop1
        }
        print("i = \(i), j = \(j)")
    }
}



//1. Write a function that print log. This function can take a string as parameter, or multiple //strings as paramsters. Return false if string is empty.
//2. (Optional) Write a function that calculate fibonancy sequence: func fibonacci(_number: Int) ->
//Int
func printLog(_ strings: String...) -> Bool {
    
    for string in strings {
        print(string)
    }

    return true
}

// Example usage
printLog("Log message 1")
printLog("Log message 2", "Log message 3")


func fibonacci(number: Int) -> Int {
    var a = 0
    var b = 1
    var result = a
    
    for _ in 1..<number {
        result = a + b
        a = b
        b = result
    }
    
    return result
}

print("Fibonacci number: \(fibonacci(number: 6))")



//Define a dictionary with key is name: String and value is score: Double
//Calculate sum of all score in dictionary

let scores: [String: Double] = [
    "Hieu": 8.5,
    "Hung": 9.25,
    "Tuan Anh": 7.5,
    "Tran Tru": 8.0
]

var totalScore: Double = 0.0

for (_, score) in scores {
    totalScore += score
}

print("The sum of all scores is: \(totalScore)")




