//
//  appmodel.swift
//  portfolio.
//
//  Created by Ramana Raj on 30/04/23.
//

import Foundation

class AppModel:ObservableObject{
    var portfolio: Portfolio = Portfolio(name:"Ramana Raj",role:"student",description: "to infinity and beyond",location: "Vellore,TN",reg:("22BCE3479"),skills: [
    Skill(id: UUID().uuidString, skillName: "iOS", image: "iphone"),
    Skill(id: UUID().uuidString, skillName: "Swift 5", image: "swift"),
    Skill(id: UUID().uuidString, skillName: "WatchOS", image: "applewatch"),
    Skill(id: UUID().uuidString, skillName: "UI / UX", image: "hand.tap.fill"),
    Skill(id: UUID().uuidString, skillName: "Editing", image: "wand.and.rays"),
    ],experiences: [
        Experience(id: UUID().uuidString, companyName: "Bharathi vidya bhavan ", role: "student", duration:"2013 - 2022"),
        Experience(id: UUID().uuidString, companyName: "VIT University 2022", role: "student", duration: "2022 - present"),
        Experience(id: UUID().uuidString, companyName: "TN 1 NAVAL UNIT", role: "CAPTAIN", duration:"2018 - 2022"
                  ),
        Experience(id: UUID().uuidString, companyName: "Bharathi vidya bhavan", role: "swimmer", duration: "2017-2022")
    ])
}
