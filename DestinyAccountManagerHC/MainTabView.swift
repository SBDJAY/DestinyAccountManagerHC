//DANIEL PIUS - 991675608



import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CharacterListView()
                .tabItem {
                    Label("Gaurdians", systemImage: "person.3.fill")
                }
            
            InventoryView()
                .tabItem {
                    Label("Vault Management", systemImage: "cube.fill")
                }
            
            AddFriendsView()
                .tabItem{
                    Image(systemName: "person.badge.plus.fill")
                    Text("Add Friends")
                }
            
            StatisticsView()
                .tabItem {
                    Label("Stats", systemImage: "chart.bar.fill")
                }
        }
        .accentColor(.yellow)
    }
}



#Preview {
    MainTabView()
}
