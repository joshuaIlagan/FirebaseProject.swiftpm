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
        TextField("Player", text: $teamName)
        Button("Add Entry") {
            
            
        }
    }
}

struct LakersView_Previews: PreviewProvider {
    static var previews: some View {
        LakersView()
    }
}
