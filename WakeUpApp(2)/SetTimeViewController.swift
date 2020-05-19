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
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var setTimeButton: UIButton!
    
    var datePicker: UIDatePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTimeButton.layer.cornerRadius = 20.0
        //ピッカーの設定
        datePicker.datePickerMode = UIDatePicker.Mode.time
    }
    
    @IBAction func timeChanged(_ sender: UIDatePicker) {
        timeLabel.text = self.format(date: sender.date)
    }
    
    @IBAction func setTimeAction(_ sender: UIButton) {
        let VC = self.presentingViewController as! ViewController
        VC.setTimeLabel.text = self.timeLabel.text
       //viewControllerに戻る
            dismiss(animated: true, completion: nil)
    }
    
    func format(date:Date)->String{
        let df = DateFormatter()
        df.dateFormat = "HH:mm"
        let setTimeStr = df.string(from: date)
        
        return setTimeStr
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
