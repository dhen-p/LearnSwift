/***
 * Protocols
 * Reference: https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson1.html#//apple_ref/doc/uid/TP40015214-CH3-SW1
 * written by dhen-p
 **/
import Cocoa

//A *protocol* defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. It doesn't provide an implementation.
protocol ExampleProtocol {
    var simpleDescription: String { get }
    func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted"
    }
}

var a = SimpleClass()
a.adjust()
let aDescription =  a.simpleDescription

class SimpleClass2: ExampleProtocol {
    var simpleDescription: String = "Another very simple class."
    func adjust() {
        simpleDescription += " Adjusted."
    }
}

var protocolArray: [ExampleProtocol] = [SimpleClass(), SimpleClass(), SimpleClass2()]

for instance in protocolArray {
    instance.adjust()
}
protocolArray