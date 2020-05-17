//
//  ViewController.swift
//  WakeUpApp(2)
//
//  Created by AYANO HARA on 2020/05/17.
//  Copyright © 2020 AYANO HARA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alarmIcon: UIButton!
    @IBOutlet weak var setTimeLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var wakeUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    
    
    
}

