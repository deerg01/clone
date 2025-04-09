//
//  ContentView.swift
//  Settings
//
//  Created by POS on 3/30/25.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var airplaneMode = false
    @State private var onWifi = false
    @State private var showAppleTV = true
    
    var body: some View{
        NavigationStack{
            List{
                Section(){
                        NavigationLink{
                            icloudView()
                                .navigationTitle("Apple Account")
                                .navigationBarTitleDisplayMode(.inline)
                        } label: {
                            HStack{
                                Image(systemName: "fireworks")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 37, height: 37)
                                    .foregroundColor(.white)
                                    .padding(.all, 10)
                                    .background(.red)
                                    .clipShape(.circle)
                                    //.cornerRadius(30)
                                                
                                VStack(alignment: .leading){
                                    Text("Sua Oh")
                                        .font(.system(size: 21))
                                        .bold()
                                    Text("Apple Account, iCloud+, and more")
                                        .font(.system(size: 14))
                                        .foregroundColor(.gray)
                                }
                                .padding(.vertical, 10)
                        }
                    }
                    if showAppleTV { //done
                            NavigationLink("Apple TV+ 3개월 무료 체험") {
                                purchaseView(showAppleTV: $showAppleTV)
                        }
                    }
                    else {
                        EmptyView()
                    }
                } header: {
                        (Text("This iPhone is supervised and managed by 포항공과대학교. ") +
                        Text("Learn more about device supervision...")
                            .foregroundColor(.blue)
                            //.onTapGesture { } //connect to the external WEB site
                         )
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .textCase(nil)
                            .padding(.bottom, 20)
                    
                }
                Section(){
                    HStack{
                        Image(systemName: "airplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 5)
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(7)
                
                        Toggle(isOn: $airplaneMode) {
                                Text("Airplane Mode")
                            }
                    }
                    
                    HStack{
                        Image(systemName: "wifi")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 5)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(7)
                        NavigationLink(){
                            WifiView(onWifi: $onWifi)
                        } label: {
                            HStack{
                                Text("Wi-Fi")
                                Spacer()
                                if onWifi{
                                    Text("SwiftFun") //display current Wi-Fi network name
                                        .foregroundColor(.gray)
                                }
                                else{
                                    Text("Off")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                    Text("Bluetooth")
                    Text("Cellular")
                    Text("Battery")
                }
                    
                Section(){
                    HStack{
                        Image(systemName: "gear")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 5)
                            .foregroundColor(.white)
                            .background(.gray)
                            .cornerRadius(7)
                        NavigationLink("General"){
                            Text("General")
                        }
                    }
                    HStack{
                        Image(systemName:"accessibility")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 5)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(7)
                        NavigationLink("Accessibility"){
                            Text("Accessibility")
                        }
                    }
                    Text("Action Button")
                    Text("Apple Intelligence & Siri")
                    Text("Camera")
                    Text("Control Center")
                    HStack{
                        Image(systemName: "switch.2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 5)
                            .foregroundColor(.white)
                            .background(.gray)
                            .cornerRadius(7)
                        NavigationLink("Control Center"){
                            controlView()
                        }
                    }
                    HStack{
                        Image(systemName: "sun.max.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 5)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(7)
                        NavigationLink("Display & Brightness"){
                            disBriView()
                        }
                    }
                    Text("Home Screen & App Library")
                    Text("Search")
                    Text("StandBy")
                    Text("Wallpaper")
                }
            }
            .navigationTitle("Settings")
            .searchable(text: $searchText, prompt: "Search")
            
        }
    }
}

#Preview {
    ContentView()
}
