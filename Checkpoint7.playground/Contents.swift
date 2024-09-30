import Cocoa

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Bark Bark")
    }
    
    init(legs: Int, speech: String) {
        super.init(legs: legs)
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bow wow")
    }
}

class Poodle: Dog {
    override func speak() {
        print("*Unrecognizable drooling*")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    func speak() {
        print("Mewwwwwww")
    }
    
    init(legs:Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Persian: Cat {
    override func speak() {
        print("Purrrrr")
    }
}

class Lion: Cat {
    override func speak() {
        print("ROARRRRRR.... *munch munch munch*")
    }
}

var lion = Lion(legs: 4, isTame: false)
lion.speak()
