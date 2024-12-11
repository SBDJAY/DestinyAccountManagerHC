//DANIEL PIUS - 991675608



import SwiftUI

struct CharacterListView: View {
    @StateObject var viewModel = CharacterViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.characters) { character in
                NavigationLink(destination: CharacterDetailView(character: character)) {
                    VStack(alignment: .leading) {
                        Text(character.name)
                            .font(.headline)
                        Text("\(character.classType) - Light Level: \(character.lightLevel)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Gaurdians")
        }
    }
}

#Preview {
    CharacterListView()
}
