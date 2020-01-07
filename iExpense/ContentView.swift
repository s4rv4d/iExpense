//
//  ContentView.swift
//  iExpense
//
//  Created by Sarvad shetty on 1/5/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var expence = Expense()
    @State private var isShown = false
    
    var body: some View {
        NavigationView {
            List{
//                ForEach(self.expence.items, id: \.id){ item in
//                    Text(item.name)
//                }.onDelete(perform: removeItems)
                //after conforming to Identifiable
                ForEach(self.expence.items){ item in
                    Text(item.name)
                }.onDelete(perform: removeItems)
            }
        
        .navigationBarTitle("iExpense")
        .navigationBarItems(trailing:
            Button(action:{
//                let expence = ExpenseItem(name: "Test", type: "Personal", amount: 5)
//                self.expence.items.append(expence)
                self.isShown = true
            }){
                Image(systemName: "plus")
            }
            )
                .sheet(isPresented: $isShown){
                    AddView(expenses: self.expence)
            }
        }
    }
    
    func removeItems(at offsets:IndexSet){
        expence.items.remove(atOffsets: offsets)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
