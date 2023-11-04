//
//  AddTuneView.swift
//  MyTuneList
//
//  Created by Marc-Developer on 11/3/23.
//

import SwiftUI

struct AddTuneView: View {
    let keys = ["A", "B", "C", "D", "E", "F", "G"]
    
    @State private var title = ""
    @State private var key = "C"
    @State private var style = ""

    var body: some View {
        Form {
            TextField("Title", text: $title)
            Picker("Key", selection: $key) {
                ForEach(keys, id: \.self) {
                    Text($0)
                }
            }
            TextField("Style", text: $style)
        }
//        
//        Form {
//                TextField("Title", text: $title)
//                Picker("Letter", selection: $letter) {
//                    ForEach("ABCDEFG", id: \.self) {
//                        Text($0)
//                    }
//                }
//                TextField("Style", text: $style)
//        }
    }
}

#Preview {
    AddTuneView()
}
