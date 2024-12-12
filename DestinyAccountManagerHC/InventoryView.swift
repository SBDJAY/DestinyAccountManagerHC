//DANIEL PIUS - 991675608



import SwiftUI

struct InventoryView: View {
    @StateObject private var viewModel = InventoryViewModel()
    
    @State private var newItemName: String = ""
    @State private var itemType: String = "Weapon" // Selector for Weapon/Armor
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.mint.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Vault")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                    .foregroundColor(.mint)
                
                List {
                    // Display current inventory items
                    ForEach(viewModel.inventoryItems) { item in
                        Text(item.name)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.5))
                            .cornerRadius(10)
                    }
                    .onDelete(perform: viewModel.deleteItem) // Allow item deletion
                    
                    // Item Type Selector (Weapon/Armor)
                    Picker("Select Item Type", selection: $itemType) {
                        Text("Weapon").tag("Weapon")
                        Text("Armor").tag("Armor")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.bottom, 10)
                    
                    // Text field for adding gear
                    HStack {
                        TextField("Enter item name", text: $newItemName)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(8)
                            .padding(.bottom, 10)
                        
                        Button(action: {
                            if !newItemName.isEmpty {
                                let itemDescription = "\(itemType): \(newItemName)"
                                viewModel.addItem(name: itemDescription) // Add new item to inventory
                                newItemName = "" // Clear input field after adding
                                
                                // Call NotificationManager to send banner notification
                                NotificationManager.sendNotification(itemName: itemDescription)
                            }
                        }) {
                            Text("Add Item")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.mint)
                                .cornerRadius(8)
                        }
                        .disabled(newItemName.isEmpty)
                    }
                }
                .listStyle(PlainListStyle())
                .background(Color.clear)
                
                Spacer()
            }
            .padding()
        }
        .onAppear {
            NotificationManager.requestNotificationPermission()
        }
    }
}


#Preview {
    InventoryView()
}
