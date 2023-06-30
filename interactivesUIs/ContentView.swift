//
//  ContentView.swift
//  interactivesUIs
//
//  Created by Scholar on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name=""
    @State private var textTitle = "WHAT IS YOUR NAME?"
    
    var body: some View {
        VStack{
            
            Text("\(textTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
            
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color(red: 0.999, green: 0.833, blue: 0.905), width: 3)
                .padding()
            
            Button("Submit Name") {
                textTitle = ("Welcome, \(name)!")
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(Color(red: 0.999, green: 0.833, blue: 0.905))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
