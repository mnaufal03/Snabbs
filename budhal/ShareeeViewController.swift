//
//  ShareeeViewController.swift
//  budhal
//
//  Created by Faisal on 23/03/20.
//  Copyright © 2020 Snabb. All rights reserved.
//

import UIKit

class ShareeeViewController: UIViewController {

    
    let menuHeight = UIScreen.main.bounds.height / 3
    override func viewDidLoad() {
        super.viewDidLoad()
        view.frame.origin.y += menuHeight
        print("berhasil")
        // Do any additional setup after loading the view.
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
