//
//  Chapter3.swift
//  WheresAbby
//

import Foundation

func chapterThree() {
    let mainCharacter = Person(name: "Abby", age: 22)
    let senses = ["hear", "hearing", "feel", "touch"]
    let directions = ["forward", "back", "left", "right", "up", "down"]
    var tools = ["iPhone", "flashlight"]
    var isAlone = true
    var silence = false
    var safeArea: String? = nil ?? "Abby is still not safe"
    let bat = ScarysSounds.bat
    let water = ScarysSounds.water
    let cat = ScarysSounds.cat
    let fear1 = "Abby is still lost and afraid. "
    let fear2 = "Abby still hasnt found an exit. "
    
    print( "\nChapter 3 \n\n  \(mainCharacter.name)'s other senses were magnified due to her blindness. She could \(senses[2]) the cool, damp air and the way it brushed against her face, signaling the direction of the tunnels. She could \(senses[0]) the subtle drip of water echoing in the distance, \(water.noise). She decided to move \(directions[0]), hoping to find a way out. \(mainCharacter.name) had always relied on her senses. The distant chirping of birds, the comforting hum of the city, the soft voices of her family. Born blind, she had learned to navigate her world with precision, relying heavily on her acute sense of \(senses[1]) and \(senses[3]). The \(tools[0]) she held was not just a device; it was an extension of herself, an assistant, and at times, her only link to the world around her.",

           "\n \(mainCharacter.name) reached out and her fingers brushed against something. Her hands danced across surfaces, encountering objects, tools, and cold, metallic shapes she could not name.")
    let numberOfSweeps = 3
    for _ in 1...numberOfSweeps {
        print("\(mainCharacter.name) waved her hand from \(directions[2]) to \(directions[3]).")
    }
tools.append("whistle")
    print("As she wiped at the walls, her fingers ran across what felt to be a lanyard. She grabbed the lanyard from the wall and attached to the end was a \(tools[2]). She knew this could be useful so she tucked the \(tools[2]) away and felt on. Time passed, and \(mainCharacter.name)'s fear grew. Her fingertips were her eyes here, and she explored the perimeter of her prison, searching for a way back to the surface. She kept to one wall, ensuring she would not get lost in the circular wandering that the blind fear in unknown spaces.", "She began to \(senses[0]) \(bat.noise), flying \(directions[4]) above. It was the sound of bats flying hastily away. She quickly pulled out the \(tools[2]) she found and began to blow it repeatedly, in the hopes that an exit was near and someone would \(senses[0]). But all she could \(senses[0]) back was echoes. Shortly after, the \(bat.noise) stopped, and she was alone in silence again. ")
   
    
    
    silence = true
    if silence {
        print("She slowly began to move \(directions[0]) in the direction the bats were flying.")
    } else {
        print("The faint noise was \(cat.noise) ")
    }
    stillLost()
    
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
 
   
    func stillLost()  {
        if silence == isAlone {
            print((fear1) + (fear2) + (safeArea ?? ""))
        }
    }
    }
    
    struct Person {
        var name: String
        var age: Int?
    
    }







