//DANIEL PIUS - 991675608


import Foundation

class CharacterViewModel: ObservableObject {
    @Published var characters: [Character] = [
        Character(
            id: UUID(),
            name: "Hunter",
            classType: "Prismatic",
            lightLevel: 2000,
            loadout: ["Prismatic (Storm's Edge)", "Lucky Pants (leg)","Prophet of Doom - SG", "Igneous Hammer (Adept) - HC", "Cataphract Gl3 (Adept) - GL"]
        ),
        Character(
            id: UUID(),
            name: "Titan",
            classType: "Stasis",
            lightLevel: 2010,
            loadout: ["Glacial Quake", "Stoicism(Mar [Spirit of Inmost Light, Spirit of Synthoceps])", "Tinasha's Mastery - RS, VS Velocity Baton - SGL, Grand Overture - MG"]
        ),
        Character(
            id: UUID(),
            name: "Warlock",
            classType: "Prismatic",
            lightLevel: 2000,
            loadout: ["Prismatic (Song of Flame)", "Ophidian Aspect (Arms)", "Khvostov 7G-0X - AR", "Matador 64 - SG","Unwavering Duty (Adpet) - MG" ]
        )
    ]
}

