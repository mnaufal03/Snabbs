//
//  ViewController.swift
//  budhal
//
//  Created by Faisal on 11/03/20.
//  Copyright © 2020 Snabb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let centre = UNUserNotificationCenter.current()
        
        centre.requestAuthorization(options: [.alert , .sound , .badge]){
            (granted, Error)in
        }
        
        let content = UNMutableNotificationContent()
        content.title = "Budhal"
        content.body = "you will have to leave in"
        content.sound = UNNotificationSound.default
        
        let date = Date().addingTimeInterval(9)
        
        let dateComponents = Calendar.current.dateComponents([.year , .month , .day , .hour], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let uuidString = UUID().uuidString
        
        let request =  UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        centre.add(request){
            (error)in
        }
    }


}

