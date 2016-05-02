/***
 * Basic Types
 * Reference: https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson1.html#//apple_ref/doc/uid/TP40015214-CH3-SW1
 **/

import UIKit

var str = "Hello, playground"

//Immutable variable
let myConstant = 10
//Mutable variable
var myVariable = 10
myVariable = 20

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//Values are never implicitly converted to another type
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//string interpolation
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruits"

//Optional
let optionalInt: Int? = 9

//To get underlying value from an optional, *unwrap* it
// '!' is force unwrap operator, only use it if underlying values isn't *nil*
let actualInt: Int = optionalInt!

var myString = "7"
var possibleInt = Int(myString)
print(possibleInt)
myString = "Banana"
// possibleInt will be get *nil*
possibleInt = Int(myString)
print(possibleInt)

//Array - data type that keeps track of an ordered collection of items
var ratingList = ["Poor","Fine","Good","Excellent"]
ratingList[1] = "OK"
ratingList
// to create empty array, use the initializer syntax
var emptyArray = [String]()

// implicitly unwrapped optional
var implicitUnwrapedOptionalInt: Int!
