//
//  MainTuneListView.swift
//  MyTuneList
//
//  Created by Marc-Developer on 11/3/23.
//

import SwiftUI
import SwiftData

struct MainTuneListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var tunes: [Tune]
    
    var body: some View {
        List {
            ForEach(tunes) { tune in
                NavigationLink {
                    // detail view
                    Text(tune.name)
                } label: {
                    Text(tune.name)
                }
            }
            .onDelete(perform: deleteItems)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                EditButton()
            }
            ToolbarItem {
                Button(action: addItem) {
                    Label("Add Item", systemImage: "plus")
                }
            }
        }
    }
    private func addItem() {
        withAnimation {
            let newItem = Tune(name: "new tune")
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(tunes[index])
            }
        }
    }
}

#Preview {
    MainTuneListView()
}
