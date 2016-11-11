//
//  FirstViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/9.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let customView = CustomView(frame: view.bounds)
        
        customView.backgroundColor = UIColor.cyan
        
        view.addSubview(customView)
        
    }
    
}
