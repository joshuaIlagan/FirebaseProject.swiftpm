//
//  AddPlayerView.swift
//  FirebaseProject
//
//  Created by Joshua S. Ilagan on 11/1/23.
//

import SwiftUI
import FirebaseDatabase

struct AddPlayerView: View {
    
    let database = Database.database().reference()
    @State var teamName = ""
    @State var playerName = ""
    @State var playerNumber = ""
    
    
    
    var body: some View {
        VStack{
            
            TextField("Team", text: $teamName)
            TextField("Player", text: $playerName)
            TextField("Number", text: $playerNumber)
            Button("Add Entry") {
                let playerRef = database.child("players").childByAutoId()
                let playerData: [String: Any] = [
                    "teamName": teamName,
                    "name": playerName,
                    "number": playerNumber
                ]
                playerRef.setValue(playerData)
            }
            
            
            
        }
        
    }
}

struct AddPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerView()
    }
}
