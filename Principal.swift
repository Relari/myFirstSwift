
// Variables
var number = 123
print(number)

var letter = "Hello World"
print(letter)


// Funcion Simple
func sayHello() {
    print("func -> Hello World")
}
sayHello()

// Funcion con un parametro
func sayMyName(name: String) {
    print("Hola, mi nombre es \(name)")
}
sayMyName(name: "Renzo")

// Funcion con dos parametros
func sayMyNameAndAge(name: String, age: Int) {
    print("Hola, mi nombre es \(name) y mi edad es \(age)")
}
sayMyNameAndAge(name: "Renzo", age: 25)

// Funcion que retorna un saludo
func helloString() -> String {
    return "Hello World"
}
print(helloString())

// Funcion que suma 2 numeros
func sumTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int {

    let sum = firstNumber + secondNumber
    return sum
}

let myNewNumber = sumTwoNumbers(firstNumber: 5, secondNumber: 5)
print(myNewNumber)

// Funcion que valida la edad
func validateAge(number: Int) {
    if (number > 17) {
        print("Es mayor de edad.")
    } else {
        print("Es menor de edad.")
    }
}
validateAge(number: 15)

class Programer {
    let name: String
    let age: Int
    let languages: [Language]

    enum Language {
        case swift
        case kotlin
        case java
        case javascript
    }

    init(name: String, age: Int, languages: [Language]) {
        self.name = name
        self.age = age
        self.languages = languages
    }

    func code() {
        print("Estoy Programando \(languages)")
    }
}

let renzo = Programer(name: "Renzo Lavado", age: 25, languages: [.swift, .java])
renzo.code()

protocol PersonService {

    func sayHello(name: String) -> String 
}

class PersonServiceImpl : PersonService {

    func sayHello(name: String) -> String {
        return "Hello \(name) welcome"
    }
}

let person = PersonServiceImpl()
print(person.sayHello(name: "Renzo"))