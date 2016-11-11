//
//  FifthView.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/10.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class FifthView: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var bezierPath: UIBezierPath = {
        let path = UIBezierPath()
        

        
        return path
    }()

    lazy var arr: Array<CGPoint> = {
        let arr: Array<CGPoint> = []
        return arr
    }()
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        UIColor.red.set()
        
        bezierPath.lineWidth = 3
        
        bezierPath.lineCapStyle = .round
        
        bezierPath.lineJoinStyle = .round
        
        if arr != [] {
            
            bezierPath.move(to: arr.first!)
        
            for point in arr {
                
                bezierPath.addLine(to: point)
                
                bezierPath.stroke()
                
            }
            
        }
        
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {//开始
        
        let point = touches.first?.location(in: self)
        
        arr.append(point!)
        
        bezierPath.move(to: point!)
        
        print("touchesBegan ----------------------------------------------- \(point!)")
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {//移动
        
        let point = touches.first?.location(in: self)
        
        
        
        arr.append(point!)
        
        bezierPath.addLine(to: point!)
        
        setNeedsDisplay()
        
        print("touchesMoved ----------------------------------------------- \(point!)")
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {//结束
        
        let point = touches.first?.location(in: self)
        
        arr.append(point!)
        
        print("touchesEnded ----------------------------------------------- \(point!)")
        
    }
    
}
