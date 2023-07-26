//
//  Todo.swift
//  Todo
//
//  Created by Sadia Thasina on 26/07/2023.
//

import Foundation

struct Todo: Identifiable {
    let id = UUID()
    var title: String
    var subtitle = ""
    var isCompleted = false
}
