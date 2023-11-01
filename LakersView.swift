//
//  LakersView.swift
//  FirebaseProject
//
//  Created by Joshua S. Ilagan on 10/26/23.
//

import SwiftUI
import FirebaseDatabase

struct LakersView: View {
    
    
    let database = Database.database().reference()
    @State var teamName = ""
    @State var PlayerName = ""
    @State var PlayerNumber = ""
    
    
    
    var body: some View {
        Color.yellow
                .ignoresSafeArea()
                .blendMode(.multiply)// Ignore just for the color
                .overlay(
        VStack{
            Image("lakers")
                .offset(y:-50)
            
        TextField("Team", text: $teamName)
                .padding()
                .border(Color.black, width: 4)
                .background(.white)
        TextField("Player", text: $PlayerName)
                .padding()
                .border(Color.black, width: 4)
                .background(.white)
        TextField("Number", text: $PlayerNumber)
                .padding()
                .border(Color.black, width: 4)
                .background(.white)
            Button("Add Entry") {
                var dict = [PlayerName : PlayerNumber]
                database.child(teamName).childByAutoId().setValue(dict)
            }
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(20)
            Image("LEBRON")
        })
    }
}

struct LakersView_Previews: PreviewProvider {
    static var previews: some View {
        LakersView()
    }
}
