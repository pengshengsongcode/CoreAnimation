//
//  SixthViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/17.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = UIBezierPath(arcCenter: CGPoint(x: view.center.x,y: view.center.y) , radius: 100, startAngle: 0, endAngle: CGFloat(2 * Float.pi), clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.path = path.cgPath
        
        shapeLayer.frame = view.bounds
        
        shapeLayer.position = view.center//设置中心
        
        shapeLayer.lineWidth = 3
        
        shapeLayer.lineCap = "round"
        
        shapeLayer.lineJoin = "round"
        
        shapeLayer.fillColor = UIColor.clear.cgColor

        shapeLayer.strokeColor = UIColor.cyan.cgColor
        
        shapeLayer.lineDashPattern = [5,5]
        
        //颜色组
        
        var colors: Array<CGColor> = []
        
        for i in 0...360 {
            
            let color = UIColor(hue: CGFloat(i) / 360, saturation: 1.0, brightness: 1.0, alpha: 1.0)
            
            colors.append(color.cgColor)
            
        }
        
        //重点
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.mask = shapeLayer
        
        gradientLayer.colors = colors
        
//        gradientLayer.locations = [0,1]//为毛设置了就红色
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        
        gradientLayer.type = "axial"
        
        gradientLayer.frame = view.bounds
        
        view.layer.addSublayer(gradientLayer)
        
        view.layer.backgroundColor = UIColor.black.cgColor
        
    }

}
