//
//  ListWrapper.swift
//  Reminders
//
//  Created by POS on 5/27/25.
//

import SwiftUI

struct ListWrapper<Content: View>: View {
    let title: String
    let content: () -> Content

    init(title: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
    }

    var body: some View {
        ZStack(alignment: .bottom) {  // wrapper for background color && LowButton 위치 고정
            ScrollView {
                VStack {
                    content()
                    Spacer()
                }
                
            }
            LowButtons()
                .padding(.horizontal)
        }
        .padding()
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action:{}) { // 나중에 설정버튼? 으로 수정해봐야댐
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
    }
}
