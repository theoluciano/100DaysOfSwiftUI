import Cocoa

func funcWithParameter(param: String) {
    print(param)
}

func funcWithParameter1(param: (() -> String)) {
    print(param())
}

var greeting = "Hello, playground"
funcWithParameter(param: greeting)

// Computed Variable

var greeting1: String {
    return "Hello, playground"
}
funcWithParameter(param: greeting1)

// Function

func greeting2() -> String {
    return "Hello, playground"
}
funcWithParameter(param: greeting2())

funcWithParameter1(param: greeting2)

// Closure
func funcWithParameter2(param: (() -> String)) {
    print(param())
}

funcWithParameter2 {
    return "Hello, playground"
}

// Closure - Take value in

func funcWithParameter3(param: ((String) -> String)) {
    let hello = "Hello, "
    print(param(hello))
}

funcWithParameter3 { hello in
    return hello + "playground"
}
