//
//  SetTimeViewController.swift
//  WakeUpApp(2)
//
//  Created by AYANO HARA on 2020/05/17.
//  Copyright © 2020 AYANO HARA. All rights reserved.
//

import UIKit

class SetTimeViewController: UIViewController {
    
    @IBOutlet weak var sleepTimePicker: UIDatePicker!
    
    @IBOutlet weak var setTimeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func setTimeAction(_ sender: UIButton) {
        //viewControllerに戻る
        dismiss(animated: true, completion: nil)
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
