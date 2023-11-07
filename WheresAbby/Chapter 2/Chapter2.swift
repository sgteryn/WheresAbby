//
//  Chapter2.swift
//  WheresAbby
//

import Foundation

let name: String = "Abby"
let animals: String = "Barbie, Ken, Sheila, Tasha & Joe"
let totalNumberOfSounds = "20"
// Declaring constants value can not change

var isAbbyLost = true
var pet: String = "Puppy"
var animal: String = "Cat"
var family: String = "Everyone"
var numberOfSounds = 20
var numberOfAnimals = 10
var nameOfFriends = ["Andrea", "Drea", "Dreazy"]
// Variables store values that can change


// Declaring a constant (let) (constant names = name & animals) as a data type (String) with a data value of "Abby" & "Barbie, Ken, Sheila, Tasha & Joe

// Constants store values that don't change
// Data Types can be either be a noun, verb, adjective, number, adverb.
// Data Type Ex.
// let name: String "Dog"
// let number: Int = 12
// let decimalNumber: Double = 3.14
// let trueOrFalseValue: Bool = rue or false


func chapterTwo() {
    print()
    print()
    print("WHERE'S ABBY?\n")
    
    print("Chapter 2\n")
    
    print("Abby begins to wonder what she should do, what she once relied on is now dead - Her phone. She is so afraid because she has never been without her family.\n")
    
    print("But then she quickly remembers that everything she has ever known in life she learned by touch and sound. The fear now has turned into an courage and a taste for adventure. She says to herself, Finally, I'm Queen of the Jungle.\n")
    
    print("She begins to think of all her stuff animals she has collected thru out the years and imagines they are with her now to help her navigate out of the underworld. Barbie, Ken, Sheila, Tasha & Joe.\n")
    
    print("All of this was just a split seconds of courage because now reality has really sat in and she is afraid.\n")
    
    print("Abby really misses her stuffed animals \(animals) what will \(name) do?")
    //String Interpolation inserted in print statement
    
    if family == "Everyone" {
        print("Abby also misses \(family) as well.\n")
    }
    else {
        pet = "Puppy"
        print("She really misses her Dog")
    }
    //This is my conditional statement above
    
    
    //>>>>>>>>>>>>>>>>>>>>>>>
    func totalNumberOfSounds () {
        let result = numberOfSounds + numberOfAnimals
        print("\(result)")
        
    }
    //  var numberOfAnimals = "10"
    //  var numberOfSounds = "20"
    print("As a distraction, Abby begins to count the number of sounds and animals she heres")
    totalNumberOfSounds()
    print()
    //This is my Funtion above. totalNumberofSounds is my Func
    
    //>>>>>>>>>>>>>>>>>>>>>>>
    
    print("She now is thinking, I wish I had my friends here with me")
    
    }

    



    
