//
//  BullsView.swift
//  FirebaseProject
//
//  Created by Andres E. Lopez on 10/26/23.
//

import SwiftUI
import FirebaseDatabase

struct BullsView: View {
    let database = Database.database().reference()
    @State private var teamName = ""
    @State private var playerName = ""
    @State private var playerNumber = ""
    
    var body: some View {
        Color.red
                .ignoresSafeArea()
                .blendMode(.multiply)// Ignore just for the color
                .overlay(
        VStack {
            Image("bulls")
                .offset(y:-20)
                
            
            TextField("Team", text: $teamName)
                .padding()
                .border(Color.black, width: 4)
                .background(.white)
            
            TextField("Player", text: $playerName)
                .padding()
                .border(Color.black, width: 4)
                .background(.white)
            
            TextField("Number", text: $playerNumber )
                .padding()
                .border(Color.black, width: 4)
                .background(.white)
            Button("Add Entry") {
                var dict = [playerName: playerNumber]
                database.child(teamName).childByAutoId().setValue(dict)
            }
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(20)
            Image("goat")
                .resizable()
                .frame(width: 200, height: 250)
        })
        
    }
}

struct BullssView_Previews: PreviewProvider {
    static var previews: some View {
        BullsView()
    }
}
