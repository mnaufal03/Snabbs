//
//  SummaryViewController.swift
//  budhal
//
//  Created by afitra mamor on 27/03/20.
//  Copyright © 2020 Snabb. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
      var myTitle: String?
      var myTime:String?
      var mySetting:String?
      var myTimePos:String?
      var myNotes:String?
      var passData : [ScheduleModel]=[]
    @IBOutlet weak var notesValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        notesValue.text = myNotes
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func postData(_ sender: Any) {
        myNotes = notesValue.text
        
        
        performSegue(withIdentifier: "goHome", sender: self)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "goHome" {
              let data = segue.destination as! HomeViewController
            
           
        
                print(">>>>>>",data.dataList.count)
            
             data.dataList.append(passData[0])
           
              
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
