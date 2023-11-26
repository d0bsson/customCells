//
//  CellModel.swift
//  HW-5(UITableView)
//
//  Created by d0bsson on 26.11.2023.
//

import Foundation

struct CellModel: Identifiable {
    let id: String = UUID().uuidString //“E621E1F8-C36C-495A-93FC-0C247A3E6E5F”
    
    let userName: String
    let image: String
    let text: String
    
    static func getCellModel() -> [CellModel] {
        return [
            CellModel(userName: "Пользователь 1",
                      image: "orange",
                      text: "Здесь информация про апельсины"),
            CellModel(userName: "Пользователь 2",
                      image: "lime",
                      text: "Здесь информация про лаймы"),
            CellModel(userName: "Пользователь 3",
                      image: "arbuz",
                      text: "Здесь информация про арбузы")
        ]
    }
}
