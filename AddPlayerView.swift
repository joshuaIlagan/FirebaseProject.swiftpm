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
    @State private var teamName = ""
    @State private var playerName = ""
    @State private var playerNumber = ""
    
    var body: some View {
        Color.yellow
            .ignoresSafeArea()
            .overlay(
                VStack(spacing: 20) {
                    TextField("Team", text: $teamName)
                        .padding()
                        .background(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 5)
                        )
                    TextField("Player", text: $playerName)
                        .padding()
                        .background(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 5)
                        )
                    TextField("Number", text: $playerNumber)
                        .padding()
                        .background(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 5)
                        )
                    Button("Add Entry") {
                        let playerRef = database.child("players").childByAutoId()
                        let playerData: [String: Any] = [
                            "teamName": teamName,
                            "name": playerName,
                            "number": playerNumber
                        ]
                        playerRef.setValue(playerData)
                    }
                    .frame(width: 130)
                    .frame(height: 60)
                    .background(.purple)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    
                    Image("lakers")
                        .offset(y:20)
                }
                    .padding()
            )
    }
}

struct AddPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerView()
    }
}
