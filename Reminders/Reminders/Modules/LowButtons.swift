//
//  LowButtons.swift
//  Reminders
//
//  Created by POS on 5/27/25.
//

import SwiftUI

struct LowButtons: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                    Text("New Reminder")
                }
                .foregroundColor(.blue)
            }
            Spacer()  // always at leading position
        }
    }
}
