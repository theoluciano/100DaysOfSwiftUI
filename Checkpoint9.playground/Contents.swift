import Cocoa

func randReturn(number: [Int]?) -> Int { return number?.randomElement() ?? Int.random(in: 1...100)}

