//
//  ToDO.swift
//  ToDo
//
//  Created by Taron Saribekyan on 08.12.21.
//
import Foundation

struct ToDo: Equatable {
    let id = UUID()
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func ==(lhs: ToDo, rhs: ToDo) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    
    static func loadSampleToDos() -> [ToDo] {
        let toDo1 = ToDo(title: "ToDo one", isComplete: false, dueDate: Date(), notes: "Notes 1")
        let toDo2 = ToDo(title: "ToDo two", isComplete: false, dueDate: Date(), notes: "Notes2")
        let toDo3 = ToDo(title: "ToDo three", isComplete: false, dueDate: Date(), notes: "Note 3")
        
        return [toDo1, toDo2, toDo3]
    }
}
