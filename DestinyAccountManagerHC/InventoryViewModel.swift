import Foundation

class InventoryViewModel: ObservableObject {
    @Published var inventoryItems: [InventoryItem] = [
        InventoryItem(name: "Helmet: Celestial Nighthawk"),
        InventoryItem(name: "Gauntlets: Graviton Forfeit"),
        InventoryItem(name: "Chest: Ophidian Aspect"),
        InventoryItem(name: "Legs: Lion Rampant"),
        InventoryItem(name: "Weapon: Ace of Spades")
    ]
    
    // Add a new item to the inventory
    func addItem(name: String) {
        let newItem = InventoryItem(name: name)
        inventoryItems.append(newItem)
    }
    
    // Delete an item from the inventory
    func deleteItem(at offsets: IndexSet) {
        inventoryItems.remove(atOffsets: offsets)
    }
}
