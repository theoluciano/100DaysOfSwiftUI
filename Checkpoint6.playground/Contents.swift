import Cocoa

struct Car {
    let model: String
    let numberOfSeats: Int
    var currentGear = 0 {
        didSet {
            print("Your current gear is now \(currentGear)")
        }
    }
    
    mutating func changeGear (desiredSpeed: String) -> Void {
        if currentGear < 10 {
            if desiredSpeed == "Faster" {
                currentGear += 1
            } else if desiredSpeed == "Slower" && currentGear != 0 {
                currentGear -= 1
            } else {
                print("Sorry, I don't know what to do with that.")
            }
        } else {
            print("Woah, woah, hold your horse, buddy!")
        }
    }
}

var maserati = Car(model: "Maserati", numberOfSeats: 4)
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")
maserati.changeGear(desiredSpeed: "Faster")

