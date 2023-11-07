import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LakersView()
                .tabItem {
                    Label("Lakers", systemImage: "person.fill")
                }
            BullsView()
                .tabItem {
                    Label("Bulls", systemImage: "person.fill")
                }
            AddPlayerView()
                .tabItem {
                    Label("Add Player", systemImage: "plus.circle.fill")
                }
        }
    }
}

