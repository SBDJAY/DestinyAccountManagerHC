//DANIEL PIUS - 991675608
//https://www.hackingwithswift.com/search/Push%20Notifications
//https://peerdh.com/blogs/programming-insights/creating-a-custom-notification-manager-in-swiftui
//https://developer.apple.com/documentation/usernotifications/unusernotificationcenterdelegate

import UserNotifications

class NotificationManager {
    static func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if let error = error {
                print("Error requesting notification permission: \(error)")
            } else if granted {
                print("Notification permission granted.")
            } else {
                print("Notification permission denied.")
            }
        }
    }
    
    static func sendNotification(itemName: String) {
        let content = UNMutableNotificationContent()
        content.title = "Gear Vaultd"
        content.body = "\(itemName) has been vaulted."
        content.sound = .default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error: \(error)")
            } else {
                print("Notification sent.")
            }
        }
    }
}

