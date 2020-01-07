//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Sarvad shetty on 1/7/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import Foundation

struct ExpenseItem: Identifiable {
//     one requirement of Identifiable is that there must be a property called id that contains a unique identifier.
    let name: String
    let type: String
    let amount: Int
    let id = UUID()
}

class Expense: ObservableObject {
    @Published var items = [ExpenseItem]()
}
