//
//  AddSchedule.swift
//  budhal
//
//  Created by Faisal on 24/03/20.
//  Copyright © 2020 Snabb. All rights reserved.
//

import UIKit

class AddSchedule: UIViewController {
    
 
    @IBOutlet weak var titleValue: UITextField!
    
    @IBOutlet weak var notesValue: UITextField!
    
    var passData:[ScheduleModel]=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func postData(_ sender: Any) {
        
        let temp = ScheduleModel( time:"String",  title: titleValue.text! ,  setting:"leave in q week",timePos:"AM",notes:notesValue.text!)
        
        passData.append(temp)
        performSegue(withIdentifier: "goSummary", sender: temp)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSummary" {
            let data = segue.destination as! SummaryViewController
//            print("ini sendre >>>>>", passData[0].title)
            
            data.myTitle =  passData[0].title
            data.myTime =  passData[0].time
            data.mySetting =  passData[0].setting
            data.myTimePos =  passData[0].timePos
            data.myNotes =  passData[0].notes
            data.passData = passData
            
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
