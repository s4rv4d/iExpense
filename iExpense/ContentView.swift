//
//  ContentView.swift
//  iExpense
//
//  Created by Sarvad shetty on 1/5/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import SwiftUI

//User struct
struct User {
    var firstName = "Sarvad"
    var lastName = "Shetty"
}

struct ContentView: View {
    
    //creating an user object
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            TextField("First name: ",text: $user.firstName)
            TextField("Last name: ",text: $user.lastName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
