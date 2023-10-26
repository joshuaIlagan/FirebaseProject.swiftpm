//
//  BullsView.swift
//  FirebaseProject
//
//  Created by Andres E. Lopez on 10/26/23.
//

import Foundation
import SwiftUI
import FirebaseDatabase

struct BullsView: View {
    
    
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

struct BullsView_Previews: PreviewProvider {
    static var previews: some View {
        BullsView()
    }
}
