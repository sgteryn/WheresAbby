//
//  Chapter2.swift
//  WheresAbby

// Variables can vary and values can be changed freely).
// Constants store values that don't change
// Data Types can be either be a noun, pronouns, verb, adjective, number, adverb.
// Data Type Ex. String, Int, Double, Bool)
// let name: String "Dog"
// let number: Int = 12
// let decimalNumber: Double = 3.14
// let trueOrFalseValue: Bool = True or false


import Foundation

//  Declaring Constants (let) = name & animals; Data Type = (String). "Values listed below can not be changed"
let name: String = "Abby"
let animals: String = "Barbie, Ken, Sheila, Tasha & Joe"
let totalNumberOfSounds = 30
let nameOfOtherFriends = ["Sam", "Jace", "Courtney"]


// Variables (var) were created for Chapter 2 of my story. Various Data Types were used: Booleans, Strings, Intergers.
var isAbbyLost = true
var howDoesAbbyFeel = "Scared"
var pet: String = "Puppy"
var animal: String = "Cat"
var family: String = "Everyone"
var numberOfSounds = 20
var numberOfAnimals = 10
var besties = ["Andrew", "Joi", "Tasha", "Sarah", "John"]
var friend = ["Tara", "Jace", "Courtney"]

func chapterTwo() {
    print()
    print()
    print("Chapter 2\n")
    
    print("WHERE'S ABBY?\n")
    
    print("Abby begins to wonder what she should do, what she once relied on is now dead - Her phone. She is so afraid because she has never been without her family.\n")
    
    print("But then she quickly remembers that everything she has ever known in life she learned by touch and sound. The fear now has turned into an courage and a taste for adventure. She says to herself, Finally, I'm Queen of the Jungle.\n")
    
    print("She begins to think of all her stuff animals she has collected thru out the years and imagines they are with her now to help her navigate out of the underworld. Barbie, Ken, Sheila, Tasha & Joe.\n")
    
    print("All of this was just a split seconds of courage because now reality has really sat in and she is afraid.\n")
    
    // String Interpolation inserted in print statement using backslash, \, followed by variable name in parentheses. My variables above are \(animals) & \(name).
    
    print("Abby really misses her stuffed animals \(animals), what will \(name) do?")
    
    
    //Conditional statement
    if family == "Everyone" {
        print("Abby also misses \(family) as well.\n")
    }
    else {
        pet = "Puppy"
        print("She really misses her Dog")
    }
    
    // A Function allows coder to re-use code without repeating
    // func name = totalNumberOfSoundsAndAnimals
    // var numberOfAnimals = 10 (integer)
    // var numberOfSounds = 20  (integer)
    // Used 'return' keyword to send back value of both Integers when code is ran & printed. Output = 30.
    
    func totalNumberOfSoundsAndAnimals () {
        let result = numberOfSounds + numberOfAnimals
        print("\(result)")
    }
    print("As a distraction, she begins to count the number of sounds and animals she heres, which is")
    totalNumberOfSoundsAndAnimals()
    
    // An Array stores multiple values of the same type and allows you to manipulate a list of data (add, remove etc.) first value index starts at '0'.
    // var besties = ["Andrew", "Joi", "Tasha", "Sarah", "John"]
    // Print Index 5 = Toni
    besties.append("Toni")
    print("She's now thinking, I wish I had my bestfriend here with me \(besties[5]).\n")
    
    // * A Loop is a clean way to repeat code and is a compliment to an Array
    
    let nameOfOtherFriends = ["Tara", "Jace", "Courtney"]
    for name in nameOfOtherFriends {
        print("And my other friend")
        print("She is always there for me \(name)")
    }
    
    // Structs will allow me to create a new instance of a Sounds Abby is hearing.
    struct Sounds {
        let Sound1: String
        let Sound2: String
        let Sound3: String
        let totalNumberOfSounds: Int?
    }
    
    var howDoesAbbyFeel = Sounds(Sound1:"of Lions", Sound2: "Tigers", Sound3: "Bears", totalNumberOfSounds: 3)
    print("Abby is scared \(howDoesAbbyFeel.Sound1), \(howDoesAbbyFeel.Sound2), and \(howDoesAbbyFeel.Sound3).")
    
    enum ScarysSounds {
        case  Bird, Dinosaur, Rats
        var noise: String {
            switch self {
            case .Bird:
                return "\"chirp, chrip, chrip\""
            case .Dinosaur:
                return "gowl"
            case .Rats:
                return "tink, tink"
            }
            
        }
    }
}
