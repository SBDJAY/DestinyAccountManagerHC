//DANIEL PIUS - 991675608


import Foundation

class InventoryViewModel: ObservableObject {
    @Published var inventoryItems: [InventoryItem] = []
    
    init() {
        loadInventory()
    }
    
    // Save vault item to UserDefaults
    func saveInventory() {
        if let encoded = try? JSONEncoder().encode(inventoryItems) {
            UserDefaults.standard.set(encoded, forKey: "inventoryList")
        }
    }
    
    // Load inventory from UserDefaults when re opening app
    func loadInventory() {
        if let savedInventory = UserDefaults.standard.object(forKey: "inventoryList") as? Data {
            if let decodedInventory = try? JSONDecoder().decode([InventoryItem].self, from: savedInventory) {
                inventoryItems = decodedInventory
            }
        }
    }
    
    // Add a new item to the inventory
    func addItem(name: String) {
        let newItem = InventoryItem(name: name)
        inventoryItems.append(newItem)
        saveInventory()
    }
    
    // Delete an item from the inventory
    func deleteItem(at offsets: IndexSet) {
        inventoryItems.remove(atOffsets: offsets)
        saveInventory()
    }
}

