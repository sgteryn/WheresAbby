//
//  Chapter1.swift
//  WheresAbby
//

import Foundation

private func abbysBirthDate() -> Date {
    var dateComponents = DateComponents()
    dateComponents.year = 2005
    dateComponents.month = 5
    dateComponents.day = 10
    dateComponents.timeZone = TimeZone(abbreviation: "EDT")
    dateComponents.hour = 10
    dateComponents.minute = 5
    let userCalendar = Calendar(identifier: .gregorian)
    return userCalendar.date(from: dateComponents)!
}

private func calculateYears(interval: TimeInterval) -> Int {
    Int(interval / 31536000)
}

private let abbysPhoneNumber = PhoneNumber.random(area: 313);

private func typeOfHotDay() -> String {
    let now = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "LLLL"
    let nameOfMonth = dateFormatter.string(from: now)
    var typicalnessWord: String {
        switch(nameOfMonth) {
        case "June", "July", "August":
            "typically"
        default:
            "uncharacteristically"
        }
    }
    return "\(typicalnessWord) hot day in \(nameOfMonth)"
}

func chapterOne() {
    // Your portion of the story goes here
    print("WHERE'S ABBY?")
    print()
    print("Chapter 1")
    print()
    print("Given that you're a friend of the Williams family, you know that ")
    print("Abigail was born blind on \(abbysBirthDate().description). Now that she's ")
    print("\(calculateYears(interval: Date().timeIntervalSince(abbysBirthDate())))-years-old ")
    print("and her older sister Michelle is going to university, ")
    print("Abby has decided that she needs to learn how to get around on her own. ")
    print("Abby's about to graduate from Cass Technical High School and has ")
    print("already been accepted to Wayne State University.")
    print("Abby was just given an iPhone, and it's been programmed ")
    print("with your phone number.")
    print("Would you like to choose a ringtone for Abby's phone number, \(abbysPhoneNumber.description)?");
    print()
    print("One \(typeOfHotDay()), Abby decided to go out in the town on her own.")
    print("\"Siri, take me downtown,\" she said to her iPhone.")
}
