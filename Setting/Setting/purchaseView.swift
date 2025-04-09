//
//  purchaseView.swift
//  Settings
//
//  Created by POS on 3/31/25.
//

import SwiftUI

struct purchaseView: View {
    @Binding var showAppleTV: Bool
    @Environment(\.dismiss) var dismiss

    var body: some View {
        List {
            VStack(alignment: .leading) {
                Text("Apple TV+ 3개월 무료 체험")
                    .bold()
                    .font(.system(size: 16.9))
                    .padding(.bottom, 2)
                Text("최근 구입한 iPhone에 포함되어 있습니다. 2025. 5. 23.에 만료됩니다.")
                    .font(.system(size: 15))
            }
            Button("3개월 무료 체험 수락") {
                // jump to external
            }
            Button("지금 안 함") {
                showAppleTV = false //hide link option
                dismiss()
            }
        }
        .navigationTitle("Services Included with Purchase")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    purchaseView(showAppleTV: $showAppleTV)
//}
