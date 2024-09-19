import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) table")
    
    for j in 1...12 {
        print("    \(j) x \(i) is \(j * i)")
    }
    
    print()
}

for i in 1...5 {
    print("Count from 1 through 5: \(i)")
}

for i in 1..<5 {
    print("Count from 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

//

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...1000)
    print("I rolled a \(roll)")
}

print("Critical hit!")

//

let filenames = ["me.jpg", "work.txt", "friend.jpg"]

for filename in filenames {
    if filename.hasSuffix(".txt") {
        continue
    } else {
        print("Found picture: \(filename)")
    }
}

let number1 = 4
let number2 = 14

var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 15 {
            break
        }
    }
}

print(multiples)

