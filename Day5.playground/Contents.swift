import Cocoa

// Conditions
let score = 85

if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

//

let ourName = "Deangelo Vickers"
let friendName = "Michael Scott"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

//

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

//

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)!")
}

//

var username = "taylorswift13"
if username.isEmpty {
    username = "Anonymous"
}

print("Welcome, \(username)")
    
// Multiple Conditions

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day!")
    }
}
// same as
if temp > 20 && temp < 30 {
    print("It's a nice day!")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game.")
}

enum TransportOption {
    case airplane, helicopter, cruiseShip, dragster, moped
}

let transport = TransportOption.dragster

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .moped {
    print("I hope I won't be run over!")
} else if transport == .cruiseShip {
    print("There's water out there, right?")
} else {
    print("Speeeeeeeeeeeeeed!")
}

// Switch Statements

enum Weather {
    case sun, rain, wind, snow, other
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day!")
case .rain:
    print("Pack an umbrella.")
case .snow:
    print("School is cancelled.")
case .wind:
    print("Wear something warm.")
case .other:
    print("Hmmm, something went wrong.")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman")
case "Mega-City One":
    print("You're Judge Dredd")
case "Wakanda":
    print("You're Black Panther")
default:
    print("Wait a minute, who aaaaare you?")
}

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 french hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("a partridge in a pear tree")
}

// Ternary Operator

let canVote = age >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Phil", "Tate", "Greta", "Madison"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)




