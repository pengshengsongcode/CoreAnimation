//
//  EighthViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/18.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class EighthViewController: UIViewController {

    
    lazy var view1: UIView = {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        view.center = self.view.center
        
        view.backgroundColor = UIColor.red
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(view1)
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let keyFrame = CAKeyframeAnimation(keyPath: "position")
        
        let besizer = UIBezierPath(arcCenter: view1.center, radius: 100, startAngle: 0, endAngle: CGFloat(Float.pi * 2), clockwise: true)
        
        keyFrame.duration = 1
        
        keyFrame.path = besizer.cgPath
        
        //重复动画(存在先后顺序的问题，需要先设置CA动画的属性)，再添加动画
        keyFrame.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        
        //自动颠倒
        keyFrame.autoreverses = true
        
        view1.layer.add(keyFrame, forKey: keyFrame.keyPath)
        
        //CAKeyframeAnimation可以通过“path"和"values"来设置动画，如果设置了path，那么values关键帧将被忽略

        
    }

}
