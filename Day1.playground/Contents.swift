import Cocoa

var greeting = "Hello, playground"
var myname = "Theo Luciano"
myname = "Theodore"
myname = "Vance Worley"

let character = "Ron Swanson"

var playerName = "Roy"
print(playerName)

playerName = "Jim"
print(playerName)

playerName = "Philip"
print(playerName)

let managerName = "Michael Scott"
let meaningOfLife = "How many roads must a man walk down?"

let quote = "\"You miss 100% of the shots you don't take.\" - Michael Scott"

let movie = """
The Ring
is a fearsome
movie
"""

print(quote, movie)

let movieLength = movie.count
print(movieLength)

print(quote.uppercased())
print(movie.hasPrefix("The Ring"))
print(movie.hasSuffix("Fearsome movie"))

let score = 10
let reallyBig = 1_000_000_000

let lowerScore = score - 2
let higherScore = score + 10

var counter = 10
counter += 5
counter -= 2
counter *= 2
counter /= 2

let number = 120
print(number.isMultiple(of: 3))

let float = 0.1 + 0.2
print(float)
print(number + Int(float))

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var name = "Nicholas Cage"
name = "John Travolta"

var rating = 5.0
rating *= 2
