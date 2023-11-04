//
//  ContentView.swift
//  MyTuneList
//
//  Created by Marc-Developer on 11/3/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        TabView {
            NavigationSplitView {
                MainTuneListView()
            } detail: {
                Text("Select an item")
            }

        .tabItem {
            Image(systemName: "house")
            Text("Home")
        }
        
        Text ("Tab 2")
            .tabItem {
                Image(systemName: "music.note.list")
                Text("Playlist")
            }
        Text ("Tab 3")
            .tabItem {
                Image(systemName: "plus")
                Text("New Tune")
            }
        Text ("Tab 4")
            .tabItem {
                Image(systemName: "list.number")
                Text("Set Lists")
            }
        Text ("Tab 5")
            .tabItem {
                Image(systemName:  "list.clipboard")
                Text("Tune Index")
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Tune.self, inMemory: true)
}
