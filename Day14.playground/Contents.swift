import Cocoa

let opposites = ["Mario": "Wario", "Luigi": "Wailuigi"]
let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

//

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["The Office", "Parks and Recreation", "Bosch"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number1 = Int(input) ?? 0
print(number1)

//

let names = ["Aria", "Spencer", "Hannah", "Emily"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct newBook {
    let title: String
    let auuthor: String?
}

var boook: newBook? = nil
let auuthor = boook?.auuthor?.first?.uppercased() ?? "A"
print(auuthor)

//

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let useer = try? getUser(id: 23) {
    print("User: \(useer)")
}

let user2 = (try? getUser(id: 23)) ?? "Anonymous"
print(user2)
