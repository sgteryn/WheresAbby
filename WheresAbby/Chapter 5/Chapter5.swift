//
//  Chapter5.swift
//  WheresAbby
//

import Foundation
// Teryn's part of the story goes here//
func chapterFive() {
                    
                    print("Chapter 5)")
                    print()
                    print(" \(main.name) realized just how powerful she could be when she could simply stop to take the time and focus on her abilities rather than her limitations or the chaos she felt around her.")
                    print("She bagan to notice her strengths more and more but some things she didn't realize weren't just regular strengths that everyone had.")
                    print()
                    print("Ten years later...")
                    print()
                    print("As an official league of unlikely people emerges to guard the mystery realm and help maintain a somewhat ignorant bliss of balance in the main world. \(main.name) vets hundreds of people using her ability to \(abbysAbility[1]) in people.")
                    print(" \(main.name) is trying to figure out how to balance her personal life with the growing demands of her commitments she has made to be a protector.")
                    print("She has a beautiful family with her amazing husband \(supp1.nickName). He supports her endeavors wholeheartedly but he has no idea what all she endures.")
    print("One regular afternoon, as \(main.name) turns the corner with the bedazzled walking stick her sister got her in her \(DirectionOption.right) hand. The air seemed to suddenly become unussually frigid and her senses are heightened.")
    print("\(main.name) can feel the hairs on the back of her neck rise as the moisture evaporated from the air and the wind got even sharper. \(main.name) heard footsteps coming from the \(DirectionOption.left) of her. She could sense that this being wanted to cause her harm. \(abbyPaces(abbysPace: .turnAround))")
    print("She needs to calm down and think quickly '\(main.catchPhrases[2])' She says to herself. She realizes she has just enough time to get help.")
    for i in 0..<abbysCrew.count {
        print("'\(abbysCrew[i].name)...'")
    }
    print("\(callAFriendForHelp(friend: 2))")
    print()
    print("\(supp2.name) arrives within 3 minutes. '\(supp2.catchPhrases[0])' she says as she arrives on the scene. Then just as she approaches the scene she \(main.name) is met with exactly what she feared.")
    print("'I cant believe you would do this!' Abby shouted at her sister in dismay. 'Of all people, you should know how important it is to be a protector. But now look at you, you've become apart of the problem. \(supp5.nickName) please think about what you are doing.")
    print("This is the kind of betrayal you never can prepare for, but somehow \(main.name) knew. Abby thought it was just intuition but in reality, she has \(mainSuperCharacter.superAbilities[2]). She doesn't realize this, but \(supp2.name) has already figured it out.")
    print()
    print()
    print("To be continued...")
    print()
                }
//struct of type Character
struct Character{
    
    let name: String
    //Optional type Super Ability
    var isSuperAbled: Bool? = true
    var nickName: String
    var inAbbysCrew: Bool
    var catchPhrases:[String] = []
    
    
    func catchphrase(phrase: Int) {
        //  var phrasesArray: [String] = []
        print("\(catchPhrases[phrase])")
    }
    
    func characterIsSuperAbled(character: Character) {

        if let superAbled = isSuperAbled {
            superCharacters.append(character)
            }
        }
    
}
// Create a SuperCharacter struct with:
    // an array of super Abilities
    // a supername
    // a secret identity - the non super version of their character: Character

struct SuperCharacter {
      var superAbilities: [String] = []
      var superName: String
      var alias: Character
}

// 1. Define instances of each character
var main = Character(name: "Abby", isSuperAbled: true, nickName: "Abs", inAbbysCrew: true, catchPhrases: ["Oh my", "I'm about to feel this out.", "Get it together Abs.", "Let me think about this."])
var mainSuperCharacter = SuperCharacter(superAbilities: ["empathy", "sense genuineness", "hear up to 10 minutes in the future", "hearing", "touch", "taste", "smell"], superName: "Sensor", alias: main )

var supp1 = Character(name: "Abraham", isSuperAbled: false, nickName: "Abe", inAbbysCrew: false, catchPhrases: ["Yoooo!", "Man oh man is that crazy? or what?", "I'm a simple man"])
//
let supp2 =  Character(name: "Blessing", isSuperAbled: true, nickName: "Bless", inAbbysCrew: false, catchPhrases: ["I'm such a blessing.", "Do you know who I am?", "Bless up", "Blessed and highly favored of the Lord"])
let supp3 = Character(name: "Kecia", nickName: "KeKe", inAbbysCrew: false)
let supp4 = Character(name: "Ade", isSuperAbled: true, nickName: "King", inAbbysCrew: true)
let supp5 = Character(name: "Chandra", nickName: "Glow", inAbbysCrew: false)
let supp6 = Character(name: "Jimmy", nickName: "Slim", inAbbysCrew: false)
let supp7 = Character(name: "Vanessa", nickName: "Ness", inAbbysCrew: false)
let supp8 = Character(name: "Alfreida", nickName: "Freida", inAbbysCrew: true)

// 2. Create an array of characters
var characters: [Character] = [ main , supp1, supp2, supp3, supp4, supp5, supp6, supp7, supp8 ]
//3. Create an array of Super Abled charactes
var superCharacters: [Character] = [main, supp2, supp4, supp5, supp6, supp8]
var abbysCrew: [Character] = [main, supp2, supp4, supp8]

var actions = ["listen", "talk", "pace", "call a friend for help"]
            
let abbysAbility = ["empathy", "sense genuineness", "hear up to 10 minutes in the future", "hearing", "touch", "taste", "smell"]
            
//Function for Abby to call a friend that has super abilities for help
            
func callAFriendForHelp(friend: Int){
                
        var friends = [ characters[4].name, characters[1].name, characters[2].name ]
                
        print("I'm going to call \(friends[friend]) for help.")
            }
//enum
enum DirectionOption {
    
    case left, right, straightAhead, north, south, east, west, northeast, southeast, northwest, southwest, turnAround
    
    var directionName: String
    {
        switch self {
        case .left:
            return "left"
        case .right:
            return "right"
        case .straightAhead:
            return "straight ahead"
        case .north:
            return "north"
        case .south:
            return "south"
        case .east:
            return "east"
        case .west:
            return "west"
        case .northeast:
            return "northeast"
        case .northwest:
            return "northwest"
        case .southwest:
            return "southwest"
        case .southeast:
            return  "southeast"
        case .turnAround:
            return "turn around"
        }
    }
}
//Conditional
func abbyPaces(abbysPace:DirectionOption) -> String {
    if abbysPace == .left {
        return "Abby began to pace from left to right."
    } else if abbysPace == .right {
        return "Abby began to pace from right to left."
    } else if abbysPace == .straightAhead {
        return "Abby began to pace then move straight ahead. Occasionally stopping to pace again."
    } else if abbysPace == .north {
        return "Staring towards the North Star, Abby began to pace."
    } else if abbysPace == .south {
        return "Abby began to pace as she contemplated going south."
    } else if abbysPace == .east {
        return "Abby began to pace from east to west"
    } else if abbysPace == .west{
        return "Abby began to pace from west to east"
    } else if abbysPace == .northeast {
        return "As trouble arose in the northeast region, Abby began to pace so she could get her mind together."
    } else if abbysPace == .northwest {
        return "Abby began to pace but she could sense there was trouble coming from the northwest."
    } else if abbysPace == .southwest {
        return "The amount of birds flying southwest was astonishing. Abby began to pace out of fear for what she could feel was coming next."
    } else if abbysPace == .southeast {
        return  "There was a surprise visitor southeast of Abby. She began to pace out of anticipation; waiting to recognize who it was."
    } else if abbysPace == .turnAround {
        return "Abby began to pace, turn around and pace more."
    } else {
        return "Abby began to pace"
    }
                

      }
