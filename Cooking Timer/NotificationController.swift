//
//  NotificationController.swift
//  Cooking Timer
//
//  Created by Alexander Curran on 18/12/2014.
//  Copyright (c) 2014 Alex Curran. All rights reserved.
//

import UIKit

class NotificationController: NSObject {
    
    func send(interval: NSTimeInterval, foodName: NSString) {
        var application = UIApplication.sharedApplication();
        
        var notification = UILocalNotification();
        var message = NSString(format: "Your %@ is ready to take out the oven", foodName);
        notification.timeZone = NSTimeZone.defaultTimeZone();
        notification.soundName = UILocalNotificationDefaultSoundName;
        notification.alertBody = message;
        notification.fireDate = NSDate().dateByAddingTimeInterval(interval);
        
        application.scheduleLocalNotification(notification);
    }
    
    func checkNotificationSettings() {
        var application = UIApplication.sharedApplication();
        
        var types = UIUserNotificationType.Alert | UIUserNotificationType.Sound;
        var notificationSettings = UIUserNotificationSettings(forTypes: types, categories: nil);
        application.registerUserNotificationSettings(notificationSettings);
    }
   
}
