//
//  ViewController.swift
//  WakeUpApp(2)
//
//  Created by AYANO HARA on 2020/05/17.
//  Copyright © 2020 AYANO HARA. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var alarmIcon: UIButton!
    @IBOutlet weak var setTimeLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var wakeUpButton: UIButton!
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wakeUpButton.layer.cornerRadius = 20.0
        
        timeFiring()
    }
    
    @IBAction func settingPageTransition(_ sender: UIButton) {
        //setTimeVCに遷移
        performSegue(withIdentifier: "setTimeVC", sender: nil)
        
    }
    
    @IBAction func wakeUpAction(_ sender: UIButton) {
        //アラームを止める
        
        //videoVCに遷移
        performSegue(withIdentifier: "videoVC", sender: nil)
        
    }
    
    @objc func nowTime(){
        //現在時刻を取得
        let now = Date()
        let calendar:NSCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
        
        let components = calendar.components(
            [
                NSCalendar.Unit.hour,
                NSCalendar.Unit.minute
        ], from: now)
        
        print("hour:\(String(describing: components.hour))")
        print("minute:\(String(describing: components.minute))")
        
        let currentTimeStr: String = "\(components.hour!):\(components.minute!)"
        currentTimeLabel.text = currentTimeStr
        
    }
    
    func timeFiring(){
        let timer = Timer(timeInterval: 1, target: self, selector: #selector(nowTime), userInfo: nil, repeats: true)
        RunLoop.main.add(timer, forMode: .default)
        
    }
    
    //1桁のものには0をつける。例えば1秒なら01秒に。
    func addZero(timestring:String,timeNumber:Int)->String{
        if ((timestring).count == 1){
            return("0\(timeNumber)")
        }else{
            return("\(timeNumber)")
        }
    }
}

