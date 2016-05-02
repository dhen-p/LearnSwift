/***
 * Functions And Methods
 * Reference: https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson1.html#//apple_ref/doc/uid/TP40015214-CH3-SW1
 * written by dhen-p
 **/

import Cocoa

//a function can have a return type, written after the ->
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greet("Anna", day: "Tuesday")
greet("Bob", day: "Friday")
greet("Charlie", day:"a nice day")

//Functions that are defined within a specific type are called methods.
let exampleString = "hello"
if exampleString.hasSuffix("lo") {
    print("ends in lo")
}
// you can call a method using the dot syntax. When you call a method, you pass in the first arugument value without writing its name, and every subsequent value with its name.
var array = ["Apple", "Banana", "Dragonfruit"]
array.insert("Cherry", atIndex: 2)
print(array)