//
//  ContentView.swift
//  Reminders
//
//  Created by POS on 5/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {  // wrapper for background color && LowButton 위치 고정
                Color(.systemGray6)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        LazyVGrid(columns: [
                            GridItem(.flexible()), GridItem(.flexible()),
                        ]) {  // 2열
                            ForEach(ListItem.DefaultList) { item in
                                NavigationLink {
                                    destination(for: item.title)
                                        .onAppear {
                                            print("Navigating to \(item.title)")
                                        }
                                } label: {
                                    ListItemRow(item: item)
                                }
                            }
                        }
                        MyListHeader
                        MyListItems
                    }
                    .searchable(text: $searchText)
                    .toolbar {
                        //EditButton()
                        Button("Edit") {}  // custom edit mode가 필요하겠네요..
                            .foregroundColor(.blue)
                    }
                }

                Spacer()

                HStack {
                    LowButtons()
                    Spacer()
                    Button("Add List", action: {})
                        .foregroundColor(.blue)
                }
                .padding(.horizontal)
            }
        }
    }

    var MyListHeader: some View {
        HStack {
            Text("My Lists")
                .font(.title3)
                .bold()
            Spacer()
            Button("UPDATE") {}  //누르면 icloud settings으로 날아가야함
                .font(.caption)
                .padding(.horizontal, 12)
                .padding(.vertical, 4)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }

    var MyListItems: some View {  // 나중에 structure로 뺄 부분
        HStack {
            NavigationLink(destination: SwiftUIView()) {  // 이거만 반복해주면 되겠지
                Image(systemName: "list.bullet")
                    .foregroundColor(.white)
                    .background(
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.orange)
                    )

                Text("ㅤㅤ Reminder")
                    .tint(.black)
                Spacer()
                Text("0")
                    .foregroundColor(.gray)
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct ListItemRow: View {
    let item: ListItem

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image(systemName: item.iconName)
                    .foregroundColor(.blue)
                Text(item.title)
                    .foregroundColor(.gray)
            }
            Spacer()
            if item.title != "Completed" {  // completed의 경우 소속개수 표시x
                Text("\(item.count)")
                    .foregroundColor(.black)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(
            color: Color.black.opacity(0.05),
            radius: 3,
            x: 0,
            y: 2
        )
        .padding(.horizontal)
    }
}

@ViewBuilder
func destination(for title: String) -> some View {
    switch title {
    case "Today":
        TodayView(title: title)
    case "Scheduled":
        ScheduledView(title: title)
    case "All":
        AllView(title: title)
    case "Completed":
        CompleteView(title: title)
    default:
        AnyView(Text("Error: Destination Not Found"))
    }
}

//func destination(for title: String) -> some View {
//    switch title {
//    case "Today":
//        return AnyView(TodayView())
//    case "Scheduled":
//        return AnyView(SwiftUIView())
//    case "All":
//        return AnyView(SwiftUIView())
//    case "Completed":
//        return AnyView(SwiftUIView())
//    default:
//        return AnyView(Text("Error: Destination Not Found"))
//    }
//}

#Preview {
    ContentView()
}
