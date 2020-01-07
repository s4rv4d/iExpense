//
//  AddView.swift
//  iExpense
//
//  Created by Sarvad shetty on 1/7/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import SwiftUI

struct AddView: View {
    
    @ObservedObject var expenses: Expense
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    static let types = ["Business","Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name",text: $name)
                Picker("Type", selection: $type){
                    ForEach(Self.types, id: \.self){
                        Text($0)
                    }
                }
                
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
            }
        .navigationBarTitle(Text("Add new expense"))
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expense())
    }
}
