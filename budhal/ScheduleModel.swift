//
//  ScheduleModel.swift
//  budhal
//
//  Created by afitra mamor on 26/03/20.
//  Copyright © 2020 Snabb. All rights reserved.
//


import Foundation
import UIKit
//(time:"05:00", title:"makan", setting:"leave in q week"),
class ScheduleModel {
   
    var time: String
      var title: String
      var setting: String
    var timePos:String
    var notes:String
 
    
    init( time:String,  title: String, setting:String, timePos:String, notes:String){
        self.title = title
        self.time = time
        self.setting = setting
        self.timePos=timePos
        self.notes=notes
     }
}
