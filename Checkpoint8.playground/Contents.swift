import Cocoa

protocol Building {
    var roomCount: Int { get set }
    var cost: Int { get set }
    var realtor: String { get set }
    func salesSummary()
}

extension Building {
    func salesSummary() {
        print("This building has \(roomCount) room(s). It costs \(cost) dollars. For more info, please contact \(realtor)")
    }
}

struct House: Building {
    var roomCount = 6
    var cost = 250_000
    var realtor = "Bob Young"
}

struct Office: Building {
    var roomCount = 18
    var cost = 2_000_000
    var realtor = "Graham Stephen"
}


var office = Office()
var house = House()
house.salesSummary()
office.salesSummary()
