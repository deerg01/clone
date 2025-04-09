//
//  icloudView.swift
//  Settings
//
//  Created by POS on 3/31/25.
//

import SwiftUI

struct icloudView: View {
    @State private var showModal = false
    
    
    var body: some View {
        List {
            Section{
                VStack(){
                    Image(systemName: "fireworks")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 77, height: 77)
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .background(.red)
                        .clipShape(.circle)
                    Text("Sana Oh")
                        .font(.title)
                        .bold()
                    Text("myemail@gmail.com")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        
                }
            }
            Section{
                HStack{
                    Image(systemName: "person.text.rectangle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .padding(.all, 3)
                        .foregroundColor(.white)
                        .background(.gray)
                        .cornerRadius(7)
                    NavigationLink("General"){
                        Text("General")
                    }
                }
            }
            Section{
                
            }
            Section{
                
            }
            Section{
                
            }
            Section{
                Button("Sign Out") {
                    showModal.toggle()
                }
                .frame(alignment: .center)
                .foregroundColor(.red)
                .sheet(isPresented: $showModal) {
                    signOutView()
                }
                
            }
        }
    }
}

struct signOutView: View {
    @State private var isLoading = false
    @State private var rotationAngle: Double = 0
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            NavigationStack {
                VStack {
                    Text("Apple Account Password")
                        .font(.headline)
                    
                    Text("aaaaaa \naaaaaa \naaaaaaa \n")
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Spacer()
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) { // left
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) { // right
                        Button(action: startLoading) {
                            if isLoading {
                                Image(systemName: "progress.indicator")
                                    .resizable()
                                    .frame(width: 18, height: 18)
                                    .rotationEffect(.degrees(rotationAngle))
                                    .onAppear {
                                        withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
                                            rotationAngle = 360
                                        }
                                    }
                            } else {
                                Text("Turn Off")
                            }
                        }
                    }
                }
            }
    }
    
    func startLoading() {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                isLoading = false
            }
        }
}

#Preview {
    //icloudView()
    ContentView()
}
