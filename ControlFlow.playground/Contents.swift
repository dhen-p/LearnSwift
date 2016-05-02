/***
 * Control Flow
 * Reference: https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson1.html#//apple_ref/doc/uid/TP40015214-CH3-SW1
 **/

import Cocoa

// *if* statements
let number = 123
if number < 10 {
    print("The number is small")
} else if number > 100 {
    print("The number is pertty big")
} else {
    print("The number is between 10 and 100")
}

// *if-else* statements can be nested inside a *for-in* statement
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

//Use optional binding in an *if* statement to check wheter an optional contains a value.
var optionalName: String? = "John Appleseed"
//var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello \(name)"
} else {
    greeting = "Hello, But What is your name?"
}

//Use "where" caluses can be added to a case to further scope the conditional statement. Let's bind multiple values in a single *if* statement
var optionalHello:String? = "Hello"
if let hello = optionalHello where hello.hasPrefix("H"), let name = optionalName {
    greeting = "\(hello), \(name)"
}

//Switches in Swift are quite powerful. A *switch* statement supports any kind of data and a wide variety of comparision operations
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some rasins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = " That would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spciy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}

//You can keep an index in a loop by using a Range.
//Use Half open range operator (..<)
var firstForLoop = 0
for i in 0..<4 { // 0 to 3
    firstForLoop += i
}
print (firstForLoop)
//Use the closed range operator (...)
var secondForLoop = 0
for _ in 0...4 { //0 to 4
    secondForLoop += 1
}
//The *underscore (_)* represents a wildcard, which you can use when you don't need to know which iteration of the loop is cureentyly executing


