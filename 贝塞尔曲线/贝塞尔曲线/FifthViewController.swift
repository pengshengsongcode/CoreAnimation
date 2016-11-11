//
//  FifthViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/10.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view1 = FifthView(frame: view.bounds)
        
        view1.backgroundColor = UIColor.white
        
        view.addSubview(view1)
        
    }
    
}
