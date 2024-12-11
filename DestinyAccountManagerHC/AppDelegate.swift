//
//  AppDelegate.swift
//  DestinyAccountManagerHC
//
//  Created by Daniel Pius on 2024-12-11.
//
//DANIEL PIUS - 991675608


import UIKit
import UserNotifications

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        NotificationManager.requestNotificationPermission()
        
        UNUserNotificationCenter.current().delegate = self
        
        return true
    }

    // Handle notification when the app is in the foreground
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        // Show banner and sound notifications even if the app is in the foreground
        completionHandler([.banner, .sound])
    }
}
