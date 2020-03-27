//
//  HomeViewController.swift
//  budhal
//
//  Created by afitra mamor on 18/03/20.
//  Copyright © 2020 Snabb. All rights reserved.
//

import UIKit
 
class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var dataList : [ScheduleModel] = [ ]
    
//    var dataList : [ScheduleModel] = [ScheduleModel(time:"05:00", title:"makan", setting:"leave in q week", timePos:"AM", notes:"jangan lupa bawa mantan"),
//       ScheduleModel(time:"06:00", title:"berangkat sekolah", setting:"leave in q week",timePos:"AM",notes:"jangan lupa bawa mantan"),
//       ScheduleModel(time:"07:00", title:"berangkat kantor", setting:"leave in q week",timePos:"AM",notes:"jangan lupa bawa mantan")]
    
    var newData:[ScheduleModel]=[]  // gmana set tanpa array
    var indexEdit:Int=0
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 300.0
//        if(dataList.count==0){
//                dataList = createArray([         (time:"05:00", title:"makan", setting:"leave in q week", timePos:"AM", notes:"jangan lupa bawa mantan"),
//                (time:"06:00", title:"berangkat sekolah", setting:"leave in q week",timePos:"AM",notes:"jangan lupa bawa mantan"),
//                (time:"07:00", title:"berangkat kantor", setting:"leave in q week",timePos:"AM",notes:"jangan lupa bawa mantan")])
//        }
        
//
        print(newData.count ,"== \(indexEdit)==", dataList.count, ">>>>>>",dataList)
        if(newData.count>0 && dataList.count>0 ){
            dataList[indexEdit]=newData[0]
             
        }
        else if(newData.count>0 && dataList.count==0 ){
            
           
            dataList.append(newData[0])
             
        }
        
//        tableView.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view.
    }
    
   
    
    func createArray(_ dataDummy: [(time:String,title:String,setting:String, timePos:String, notes:String)]) -> [ScheduleModel] {
            var temp:[ScheduleModel] = []
             
            for item in dataDummy {
                temp.append(ScheduleModel(time:item.time, title:item.title, setting:item.setting, timePos:item.timePos, notes:item.notes))
            }
            
    //        print(temp)
            return temp
        }
    
    
 
    
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        return dataList.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleTableViewCell", for: indexPath) as! ScheduleTableViewCell
        cell.timeLabel.text = dataList[indexPath.row].time
        cell.titleLabel.text = dataList[indexPath.row].title
        cell.settingLabel.text = dataList[indexPath.row].setting

            return cell
        
       }
         func tableView(_ tableView: UITableView, didSelectRowAt dataOneCell: IndexPath) {
            let index = String(dataOneCell[1])
            let indexint = Int(index) ?? 0
            performSegue(withIdentifier: "EditSchedule", sender:  indexint)
             
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
              if segue.identifier == "EditSchedule" {
                let data = segue.destination as! EditSchedule
//                data.myTitle = dataList[sender].title
                let temp   = sender as? Int
                data.myTitle = dataList[temp!].title
                  data.myTime = dataList[temp!].time
                 data.mySetting = dataList[temp!].setting
                data.myTimePos = dataList[temp!].timePos
                data.myNotes = dataList[temp!].notes
                data.myIndexTable = temp!
                
                  
              }
          }
 
    //        @IBAction func buttonshare(_ sender: UIButton) {
//            let vc = ShareViewController()
//            vc.modalPresentationStyle = .custom
//            present(vc, animated: true, completion: nil)
//        }
    
    
   

}
