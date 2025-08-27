//
//  TodoModel.swift
//  TestToDoApp
//
//  Created by Fedor Donskov on 27.08.2025.
//

import Foundation

struct TodosResponseDTO: Codable {
    let todos: [TodoDTO]
    let total: Int
    let skip: Int
    let limit: Int
}

struct TodoDTO: Codable {
    let id: Int
    let todo: String
    let completed: Bool
    let userId: Int
}

struct TodoModel: Identifiable, Equatable {
    let id: Int
    var title: String
    var details: String?
    var createdAt: Date
    var isDone: Bool
    var userId: Int?
}

extension TodoModel {
    init(dto: TodoDTO, createdAt: Date = Date()) {
        self.id = dto.id
        self.title = dto.todo
        self.details = nil
        self.createdAt = createdAt
        self.isDone = dto.completed
        self.userId = dto.userId
    }
}
