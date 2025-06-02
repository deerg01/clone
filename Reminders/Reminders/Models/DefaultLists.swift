//
//  DefaultLists.swift
//  Reminders
//
//  Created by POS on 5/27/25.
//

import Foundation

struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let iconName: String
    let count: Int
    
    static let DefaultList: [ListItem] = [
            ListItem(title: "ㅤㅤToday",
                     iconName: "circle.fill",
                     count: 0),
            ListItem(title: "Scheduled",
                     iconName: "circle.fill",
                     count: 0),
            ListItem(title: "All",
                     iconName: "circle.fill",
                     count: 0),
            ListItem(title: "Completed",
                     iconName: "circle.fill",
                     count: 0),
        ]
    
    // My Lists에 포함되는 부분도 여기에 해버리자
}

