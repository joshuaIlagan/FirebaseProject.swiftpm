//
//  LakersView.swift
//  FirebaseProject
//
//  Created by Joshua S. Ilagan on 10/26/23.
//

import SwiftUI
import FirebaseDatabase

struct LakersView: View {
    
    
    @State private var players: [Player] = [] // Player struct is defined as per your previous code
       let predeterminedTeamName = "Lakers" // Set your predetermined team name
    
    
    
    
    var body: some View {
        VStack {
            List(playersForPredeterminedTeam()) { player in
                ScrollView{
                    VStack(alignment: .leading) {
                        Text("Name: \(player.name)")
                            .font(.system(size: 14))
                        Text("Number: \(player.number)")
                            .font(.system(size: 14))
                    }
                }
                    
            }
        }
        
        .onAppear {
            fetchPlayers()
        }
    }
    
    func fetchPlayers() {
            let playersRef = Database.database().reference().child("players")

        
            playersRef.observeSingleEvent(of: .value) { snapshot in
                if let playerData = snapshot.value as? [String: [String: Any]] {
                    self.players = playerData.compactMap { (key, value) in
                        guard let name = value["name"] as? String,
                              let number = value["number"] as? String,
                              let teamName = value["teamName"] as? String else {
                            return nil
                        }
                        return Player(id: key, name: name, number: number, teamName: teamName)
                    }
                    print("Fetched players: \(self.players)")
                } else {
                    self.players = []
                }
            }
        }

        func playersForPredeterminedTeam() -> [Player] {
            return players.filter { $0.teamName == predeterminedTeamName }
        }
    
}




    struct LakersView_Previews: PreviewProvider {
        static var previews: some View {
            LakersView()
        }
    }
