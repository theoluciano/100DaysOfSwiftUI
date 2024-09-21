import Cocoa

enum SqRootErrors: Error {
    case outOfBounds, noRoot
}

func findSqRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SqRootErrors.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw SqRootErrors.noRoot
}

let inputNumber = 144

do {
    let foundSqRoot = try findSqRoot(inputNumber)
    print("The square root of \(inputNumber) is \(foundSqRoot)")
} catch SqRootErrors.outOfBounds {
    print("The input number is out of bounds for this program.")
} catch SqRootErrors.noRoot {
    print("We couldn't find a square root for your input number.")
}
