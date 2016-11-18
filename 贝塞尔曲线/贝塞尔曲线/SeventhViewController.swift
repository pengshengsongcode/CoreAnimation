//
//  SeventhViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/17.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController {

    
    var shapeLayer: CAShapeLayer!
    
    var gradientLayer: CAGradientLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let path = UIBezierPath(arcCenter: CGPoint(x: view.center.x,y: view.center.y) , radius: 100, startAngle: 0, endAngle: CGFloat(2 * Float.pi), clockwise: true)
        
        shapeLayer = CAShapeLayer()
        
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
        
        gradientLayer = CAGradientLayer()
        
        gradientLayer.mask = shapeLayer
        
        gradientLayer.colors = colors
        
//        gradientLayer.locations = [0.6,0.8]//为毛设置了就红色 解答：如果设置为[0,1]就统一颜色了
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        
        gradientLayer.type = "axial"
        
        gradientLayer.frame = view.bounds
        
//        view.layer.addSublayer(gradientLayer)
        
        view.layer.backgroundColor = UIColor.black.cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func doAcTion(_ sender: AnyObject) {
        
        view.layer.addSublayer(gradientLayer)//点击之后再添加
        
        //第一种方法 low！！！
//        shapeLayer.strokeStart = 0
//        
//        shapeLayer.strokeEnd = 0
//
//        var end: CGFloat = 0.0
//        
//        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { (Timer) in
//            end = end + 0.1
//            if end >= 1.0 {
//                Timer.invalidate()
//            }
//            print(end)
//            self.shapeLayer.strokeEnd = end
//        }
        
        //第二种方法 🐂
        
        let basic = CABasicAnimation(keyPath: "strokeEnd")
        
        basic.fromValue = 1
        
        basic.toValue = 0
        
        basic.duration = 2
        
        shapeLayer.add(basic, forKey: basic.keyPath)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
