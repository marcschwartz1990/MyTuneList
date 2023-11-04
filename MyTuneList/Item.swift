//
//  Item.swift
//  MyTuneList
//
//  Created by Marc-Developer on 11/3/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
