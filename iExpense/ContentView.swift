//
//  ContentView.swift
//  iExpense
//
//  Created by Sarvad shetty on 1/5/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import SwiftUI

struct User: Codable {
    var firstName: String
    var lastName: String
}

struct ContentView: View {
    
    @State private var user = User(firstName: "Sarvad", lastName: "Shetty")
    
    var body: some View {
        Button("Save User"){
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(self.user){
                UserDefaults.standard.set(data, forKey: "userData")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
