//DANIEL PIUS - 991675608



import SwiftUI

struct CharacterDetailView: View {
    let character: Character
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(character.name)
                .font(.largeTitle)
                .bold()
            Text("Class: \(character.classType)")
                .font(.title2)
            Text("Light Level: \(character.lightLevel)")
                .font(.title3)
            
            Text("Loadout")
                .font(.headline)
                .padding(.top, 8)
            
            ForEach(character.loadout, id: \.self) { item in
                Text("- \(item)")
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle(character.name)
    }
}

//#Preview {
//    CharacterDetailView()
//}
