import UIKit
import UserNotifications

// AppDelegate that handles notifications
class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    // Called when the app finishes launching
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Request notification permission when the app launches
        NotificationManager.requestNotificationPermission()
        
        // Set the delegate for UNUserNotificationCenter to handle notifications in the foreground
        UNUserNotificationCenter.current().delegate = self
        
        return true
    }

    // Handle notification when the app is in the foreground
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        // Show banner and sound notifications even if the app is in the foreground
        completionHandler([.banner, .sound])
    }
}
