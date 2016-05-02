/***
 * Enumerations and Structures
 * Reference: https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson1.html#//apple_ref/doc/uid/TP40015214-CH3-SW1
 * written by dhen-p
 **/
import Cocoa

//Enumerations : Classes aren't the only ways to define data types in Swift.
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescriptions() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue

//Use *init?(rawValue:)*initializer to make an instance of an enumeration from a raw value
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescriptions()
}

enum Suit {
    case Spaeds, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spaeds:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

//Structures support many of the same behaviors as classes
// Diference between structures and classes is that structures are always copied when they are passed around in your code, but classes are passed by reference.

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescriptions()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spaeds)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

