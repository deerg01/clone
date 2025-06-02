//
//  DefaultListView.swift
//  Reminders
//
//  Created by POS on 5/29/25.
//

import SwiftUI

struct TodayView: View {
    let title: String
    
    var body: some View {
        ListWrapper(title: title){
            Text("Hello, World!\nThis is a Today view.")

        }
    }
}
struct AllView: View {
    let title: String
    
    var body: some View {
        ListWrapper(title: title){
            Text("Hello, World!\nThis is a All view.")

        }
    }
}
struct ScheduledView: View {
    let title: String
    
    var body: some View {
        ListWrapper(title: title){
            Text("Hello, World!\nThis is a Scheduled view.")

        }
    }
}
struct CompleteView: View {
    let title: String
    
    var body: some View {
        ListWrapper(title: title){
            Text("Hello, World!\nThis is a Complete view.")

        }
    }
}


