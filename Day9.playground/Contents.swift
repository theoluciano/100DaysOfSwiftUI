import Cocoa

let sayHello = { (name: String) -> String in
    "Hi \(name)"
}

sayHello("Lester")

func greetUser() {
    print("Hi there!")
}

var greetCopy: () -> Void = greetUser

let team = ["Gloria","Tasha","Meredith","Karen"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Tasha"{
        return true
    } else if name2 == "Tasha" {
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Tasha"{
        return true
    } else if name2 == "Tasha" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)

//

let teamNew = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let sorted = teamNew.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

print(sorted)

let reverseTeam = teamNew.sorted { $0 > $1 }
print(reverseTeam)

let tOnly = teamNew.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = teamNew.map { $0.uppercased() }
print(uppercaseTeam)

//

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
