//DANIEL PIUS - 991675608


import UserNotifications

class NotificationManager {
    
    // Request notification permission from the user
    static func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if let error = error {
                print("Error requesting notification permission: \(error)")
            } else if granted {
                print("Notification permission granted")
            } else {
                print("Notification permission denied")
            }
        }
    }

    // Send a notification when an item is added
    static func sendNotification(itemName: String) {
        // Create notification content
        let content = UNMutableNotificationContent()
        content.title = "New Inventory Item Added"
        content.body = "You added \(itemName) to your inventory!"
        content.sound = .default
        
        // Set the trigger (immediate notification)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        
        // Create the notification request
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        // Add the request to the notification center
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error adding notification: \(error)")
            }
        }
    }
}

