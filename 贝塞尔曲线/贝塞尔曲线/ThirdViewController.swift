//
//  ThirdViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/9.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.brown

        let layer = CAShapeLayer()
        
        layer.backgroundColor = UIColor.cyan.cgColor
        
        layer.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        
        layer.position = view.center//这只layer的中心
        
        let path = UIBezierPath()
        
        path.addArc(withCenter: CGPoint(x: layer.frame.width / 2, y: layer.frame.height / 2), radius: 100, startAngle: 0, endAngle: CGFloat(Float.pi), clockwise: true)
        
        layer.strokeColor = UIColor.red.cgColor
        
//        layer.fillColor = UIColor.blue.cgColor//如果只设置layer.strokeColor则变成黑色轮廓，若只设置fillColor则显示对应的颜色，可以同时显示
        layer.fillColor = UIColor.clear.cgColor //偷鸡：设置clearcolor
        
        layer.lineCap = "round"
        
        layer.lineJoin = "round"
        
        layer.lineWidth = 2
        
//        layer.lineDashPhase =  没有用！！！
        
        layer.lineDashPattern = [5,5]  //显示5，空5
        
        layer.path = path.cgPath
        
        view.layer.addSublayer(layer)
        
        
        //综上：配合使用，并且设置layer属性，则可以使用path的轮廓，优化
        
    }
}
