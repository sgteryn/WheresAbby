//
//  Chapter5.swift
//  WheresAbby
//

import Foundation
// Teryn's part of the story goes here//


var main = "Abby"
var supp1 = "Abraham"
let supp2 = "Blessing"

var characters = [main, supp1, supp2, "Kecia", "Ade", "Chandra", "Jimmy", "Vanessa" , "Alfreida"]

let Abe = supp1
    
let direction = ["left", "right", "straight ahead", "north", "south", "east", "west", "northeast", "southeast", "northwest", "southwest", "turn-around"]

let actions = ["listen", "talk", "pace", "call a friend for help"]

let abbysPowers = ["empathy", "sense genuineness", "hear up to 10 minutes in the future", "hearing", "touch", "taste", "smell"]

func callAFriendForHelp(friend: Int){
    
    var friends = [ characters[4], characters[5], characters[6] ]
    
    print("I'm going to call \(friends[friend]) for help")
}

func chapterFive() {
        
    print("Chapter 5)")
    print()
    print("There are so many things that need to be done. This mysterious realm must be safe gaurded ")
    print("Five years later...")
    print("There is now an official league of unlikely people gaurding the mystery realm. \(main) vetted hundreds of people using her ability to \(abbysPowers[1]) in people.  is trying to figure out how to balance her personal life with the growing demands of the committment she has made to be a protector.")
    print("\(main) has made the decision to call on her friends for help. ")
    print("\(main) heard footsteps coming from the \(direction[0]) of her. She could sense that this being wanted to cause her harm. She has just enough time to get help.")
    print("\(callAFriendForHelp(friend: 2))")
    
}
