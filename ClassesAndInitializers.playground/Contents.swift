/*** 
 * Classes and Initializers
 * Reference: https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson1.html#//apple_ref/doc/uid/TP40015214-CH3-SW1
 * written by dhen-p
 **/
import Cocoa

//Classes store additional information about themselves inthe form of properties, and define their behavior using methods.
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
//Create an instance of a class -- an object
var shape = Shape()
shape.numberOfSides = 7
var shapeDescriptions = shape.simpleDescription()

// An *initializer* is a method that perpares an instance of class for use.. 
class NamedShape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        //*self* is used to distinguish the *name* property from the *name* argument to the initializer.
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
// you don't need to call an initializer by writing init; 
// you call it by putting parenthesses with the appropriate arguments after the class name.
let namedShape = NamedShape(name: "my named shpae")


//Class Inheritance
//Methods on a subclass that *override* the superclass's implementation are marked with *override*

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    //override method of super class
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let testSquare = Square(sideLength: 5.2, name: "my test square")
testSquare.area()
testSquare.simpleDescription()

//failable initializer can return nil after initialization

class Circle: NamedShape {
    var radius: Double
    init?(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if(radius <= 0){
            return nil
        }
    }
    convenience init?(radius: Double){
        self.init(radius: radius, name:"Convenience circle")
    }
    override func simpleDescription() -> String {
        return "A circle with a radius of\(radius)."
    }
}
let successfulCircle = Circle(radius: 4.2, name: "successful circle")
let failedCircle = Circle(radius: -7, name: "failed circle")

//Type casting
// optional type cast operator *as?* when you're not sure if the downcast will succeed.
// forced type cast operator *as!" when you're sure that the downcast will always succeed.

class Triangle: NamedShape {
    init(sideLength: Double, name: String) {
        super.init(name: name)
        numberOfSides = 3
    }
}

let shapesArray =  [Triangle(sideLength: 1.5, name: "triangle1"), Triangle(sideLength: 4.2, name: "triangle2"), Square(sideLength: 3.2, name: "square1"), Square(sideLength: 2.7, name: "square2")]
var squares = 0
var triangles = 0
for shape in shapesArray {
    if let square = shape as? Square {
        squares += 1
    } else if let triangle = shape as? Triangle {
        triangles += 1
    }
}
print ("\(squares) squares and \(triangles) triangles.")

