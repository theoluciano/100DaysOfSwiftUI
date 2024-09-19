import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]

beatles.append("Adrian")

var scores = [Int]()
scores.append(23)
scores.append(56)
scores.append(3421)
print(scores[1])

var albums = [String]()
albums.append("Fearless")
albums.append("Red")
albums.append("Taylor Swift")
print(albums.count)

var characters = ["Michael", "Pam", "Jim", "Dwight"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

var bondMovies = ["Casino Royale", "Spectre", "Goldeneye", "No Time to Die"]
print(bondMovies.contains("Frozen"))
print(bondMovies.sorted())
print(bondMovies[2])
bondMovies.reverse()
print(bondMovies)

//

let meMyself = [
    "name": "Theo Luciano",
    "job": "Designer",
    "location": "Raleigh, NC"
]

print(meMyself)
print(meMyself["name", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Macy": true,
    "Deangelo": false
]

var chars = [Int: String]()
chars[1] = "Michael Scott"
chars[2] = "Phyllis Vance"
chars[3] = "Creed Braton"

print(chars)

//

var actors = Set([
"Denzel Washington",
"Tom Cruise",
"Nicolas Cage",
"Will Ferrel"
])

actors.insert("Don Cheadle")
actors.insert("James Spader")

print(actors.sorted())
print(actors)

///

enum Weekday {
    case Monday,Tuesday, Wednesday, Thursday, Friday
}

var day = Weekday.Monday
day = .Tuesday
day = .Wednesday

print(Weekday.Monday)
