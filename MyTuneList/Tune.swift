//
//  Item.swift
//  MyTuneList
//
//  Created by Marc-Developer on 11/3/23.
//

import Foundation
import SwiftData

@Model
final class Tune {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
