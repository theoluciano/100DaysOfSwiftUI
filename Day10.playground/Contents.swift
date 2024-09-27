import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)

print(red.title)
red.printSummary()

struct Employee {
    let name: String // property
    var vacationRemaining: Int // property
    
    mutating func takeVacation(days: Int) { // method
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops, there aren't enough days remaining.")
        }
    }
}

var deangelo = Employee(name: "Deangelo Vickers", vacationRemaining: 21) // instance w/ initializer
deangelo.takeVacation(days: 8)
print(deangelo.vacationRemaining)

//

struct NewEmployee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var michael = NewEmployee(name: "Michael Scott", vacationAllocated: 14)
michael.vacationTaken += 4
print(michael.vacationRemaining)
michael.vacationTaken += 4
print(michael.vacationRemaining)
michael.vacationRemaining = 32
print(michael.vacationAllocated)

//

struct Game {
    var score = 0 {
        willSet {
            print("Score: \(score). Will be: \(newValue)")
        }
        didSet {
            print("Score: \(score). Previously: \(oldValue)")
        }
    }
}

var game = Game()
game.score += 10
game.score += 34
game.score -= 12
game.score += 3

//

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Tim T")
print(player.number)
