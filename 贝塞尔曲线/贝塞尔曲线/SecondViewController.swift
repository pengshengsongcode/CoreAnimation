//
//  SecondViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/9.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //矩形
        let layer = CAShapeLayer()
        
        layer.backgroundColor = UIColor.orange.cgColor
        
        layer.frame = view.bounds
        
        let path1 = UIBezierPath(rect: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        path1.lineWidth = 10//无效
        
        UIColor.red.set()//无效
        
        layer.path = path1.cgPath
        
        view.layer.addSublayer(layer)
        
        //圆弧
        let double = CGFloat(90 * Float.pi / 180)
        
        let path2 = UIBezierPath(arcCenter: view.center, radius: 100, startAngle: 0, endAngle: double, clockwise: true)
        
        UIColor.red.set()
        
        path2.lineWidth = 2
        
        path2.stroke()

        layer.path = path2.cgPath
        
        view.layer.addSublayer(layer)
        
        //综上，如果配合使用，虽然会出现轮廓，但是直接设置UIBezierPath的属性均无效
        
        //所以需要使用CAShapeLayer来设置相关属性 详情请见 ThirdViewController
        

        
    }
}
