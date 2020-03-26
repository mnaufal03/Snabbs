//
//  EditSchedule.swift
//  budhal
//
//  Created by afitra mamor on 26/03/20.
//  Copyright © 2020 Snabb. All rights reserved.
//

import UIKit

class EditSchedule: UIViewController {
    
    var myTitle: String?
    var myTime:String?
    var mySetting:String?
    var myTimePos:String?
    var myNotes:String?
    var myIndexTable:Int?
    @IBOutlet weak var timeValue: UIDatePicker!
    
    @IBOutlet weak var notesValue: UITextField!
    @IBOutlet weak var titleValue: UITextField!
    @IBAction func doSave(_ sender: Any) {
        performSegue(withIdentifier: "goHome", sender: [("myIndexTable" )])
        
    }
    //    var my
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notesValue.text = myNotes
         titleValue.text = myTitle
        
    }
    

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "goHome" {
           let data = segue.destination as! HomeViewController
//           fooddata.recipeimagename = recipes[indexint].image
//           print(recipes[indexint].label)
        let temp = [ScheduleModel(time:myTime ?? " default value",title: titleValue.text ?? "<#default value#>", setting:mySetting ?? "default value", timePos:myTimePos ?? "val", notes:notesValue.text ?? "val")]
        data.newData=temp
        data.indexEdit = Int(myIndexTable! ) 
      
           
       }
   }

}
