//
//  ContentView.swift
//  iExpense
//
//  Created by Sarvad shetty on 1/5/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import SwiftUI

//User struct
class User: ObservableObject {
    @Published var firstName = "Sarvad"
    @Published var lastName = "Shetty"
}

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet"){
            self.showingSheet.toggle()
        }.sheet(isPresented: $showingSheet) {
            //sheet contents
            SecondView(name: "Sarvad")
        }
    }
}

struct SecondView: View{
    @Environment(\.presentationMode) var presentationMode
    var name:String
    
    var body: some View {
        Button("Dismiss sheet"){
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
