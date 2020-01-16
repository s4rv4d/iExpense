//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Sarvad shetty on 1/7/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
//     one requirement of Identifiable is that there must be a property called id that contains a unique identifier.
    let name: String
    let type: String
    let amount: Int
    let id = UUID()
}

class Expense: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "items")
            }
        }
    }
    
    init() {
        if let items = UserDefaults.standard.data(forKey: "items") {
            let decoder = JSONDecoder()
            
            if let decoded = try? decoder.decode([ExpenseItem].self, from: items) {
                self.items = decoded
                return
            }
        }
        
        self.items = []
    }
}
