//
//  Chapter3.swift
//  WheresAbby
//

import Foundation
//Variables- I used variables in the creation of my Person struct for the persons attributes. I also made a variable for tools because throughout the story our main character will gain more tools in her inventory.
//Constants- I made mainCharacter a constant in the story because our main character will never change. I also made directions and senses a constant because those will also not change throughout our story.
func chapterThree() {
    let mainCharacter = Person(name: "Abby", age: 22)
//Arrays- I made arrays for our characters senses as well as the directions she will travel and the tools she will use along her journey.
    let senses = ["hear", "hearing", "feel", "touch"]
    let directions = ["forward", "back", "left", "right", "up", "down"]
    var tools = ["iPhone", "flashlight"]
    var isAlone = true
    var isSilent = false
//Optionals- I used an optional string in my safeArea variable because we do not yet know if our character is in a safe area or not.
    var safeArea: String? = nil ?? "Abby is still not safe"
    let bat = ScarysSounds.bat
    let water = ScarysSounds.water
    let cat = ScarysSounds.cat
    let fear1 = "Abby is still lost and afraid. "
    let fear2 = "Abby still hasnt found an exit. "
    
    print( "\nChapter 3 \n\n  \(mainCharacter.name)'s other senses were magnified due to her blindness. She could \(senses[2]) the cool, damp air and the way it brushed against her face, signaling the direction of the tunnels. She could \(senses[0]) the subtle drip of water echoing in the distance, \(water.noise). She decided to move \(directions[0]), hoping to find a way out. \(mainCharacter.name) had always relied on her senses. The distant chirping of birds, the comforting hum of the city, the soft voices of her family. Born blind, she had learned to navigate her world with precision, relying heavily on her acute sense of \(senses[1]) and \(senses[3]). The \(tools[0]) she held was not just a device; it was an extension of herself, an assistant, and at times, her only link to the world around her.",

           "\n \(mainCharacter.name) reached out and her fingers brushed against something. Her hands danced across surfaces, encountering objects, tools, and cold, metallic shapes she could not name.")
//Loops- I used a loop to convey how many times our character repetitively wiped at the wall to feel around for objects.
    let numberOfSweeps = 3
    for _ in 1...numberOfSweeps {
        print("\(mainCharacter.name) waved her hand from \(directions[2]) to \(directions[3]).")
    }
tools.append("whistle")
    print("As she wiped at the walls, her fingers ran across what felt to be a lanyard. She grabbed the lanyard from the wall and attached to the end was a \(tools[2]). She knew this could be useful so she tucked the \(tools[2]) away and felt on. Time passed, and \(mainCharacter.name)'s fear grew. Her fingertips were her eyes here, and she explored the perimeter of her prison, searching for a way back to the surface. She kept to one wall, ensuring she would not get lost in the circular wandering that the blind fear in unknown spaces.", "She began to \(senses[0]) \(bat.noise), flying \(directions[4]) above. It was the sound of bats flying hastily away. She quickly pulled out the \(tools[2]) she found and began to blow it repeatedly, in the hopes that an exit was near and someone would \(senses[0]). But all she could \(senses[0]) back was echoes. Shortly after, the sound of \(bat.noise) stopped, and she was alone in silence again. ")
   
    
//Conditionals- I used the if else condition for if her environment was noisy or silent to print different scenarios when silent and when noisy.
    isSilent = true
    if isSilent {
        print("She then slowly began to move \(directions[0]) in the direction the bats were flying.")
    } else {
        print("Her keen senses then picked up on \(cat.noise), which seemed to be a stray kitten")
    }
    stillLost()
//Enums- I made an enum for ScarySounds with cases being water, cat, and bat. As those will be the scary sounds she will encounter in this chapter.
    enum ScarysSounds {
        case  bat, cat, water
        var noise: String {
            switch self {
            case .water:
                return "\"drip, drip, drip\""
            case .bat:
                return "fluttering wings"
            case .cat:
                return "a soft purr"
            }
        }
    }
 
//Functions  - The ChapterThree function was already given In the template and It was used to print my story to the computer. I also made a function called stillLost where if the conditions  isSilent AND  isAlone are both true - it prints a combination of 2  variables I made
    func stillLost()  {
        if isSilent == isAlone {
            print((fear1) + (fear2) + (safeArea ?? ""))
        }
    }
    }
//Structs- I made a struct for a person to identify our main Character Abby and her attributes.
    struct Person {
        var name: String
        var age: Int
    
    }







