//DANIEL PIUS - 991675608

import Foundation

//coadable needed for saving data 
struct InventoryItem: Identifiable, Codable {
    let id = UUID()
    let name: String
}
