//
//  SwiftUIView.swift
//  Reminders
//
//  Created by POS on 5/27/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ListWrapper(title: " "){
            Text("Hello, World!\nThis is a SwiftUI view.")

        }
    }
}

#Preview {
    SwiftUIView()
}
