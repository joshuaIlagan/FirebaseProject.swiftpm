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
        VStack{
        TextField("Team", text: $teamName)
        TextField("Player", text: $PlayerName)
        TextField("Number", text: $PlayerNumber)
            Button("Add Entry") {
                var dict = [PlayerName : PlayerNumber]
                database.child(teamName).setValue(dict)
            }
        }
    }
}

struct LakersView_Previews: PreviewProvider {
    static var previews: some View {
        LakersView()
    }
}
