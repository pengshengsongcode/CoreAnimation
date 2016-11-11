//
//  CustomView.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/9.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        //绘制矩形
        let path1 = UIBezierPath(rect: CGRect(x: 20, y: 100, width: 100, height: 100))
        
        UIColor.red.set()
        
        path1.lineWidth = 3
        
        path1.lineCapStyle = .round//线条拐角
        
        path1.lineJoinStyle = .round//终点处理
        
        path1.usesEvenOddFillRule = true
        
//        path1.fill()//充满效果
        
        path1.stroke()
        
        //绘制圆角矩形
        let path = UIBezierPath(roundedRect: CGRect(x: 50, y: 500, width: 100, height: 100), byRoundingCorners: [.bottomLeft,.topRight], cornerRadii: CGSize(width: 10, height: 10))
        
        path.lineWidth = 3
        
        UIColor.red.set()
        
        path.stroke()
        
        //绘制弧度
        
        let double = CGFloat(90 * Float.pi / 180)
        
        let path2 = UIBezierPath(arcCenter: CGPoint(x: center.x - 50, y: center.y + 50), radius: 50, startAngle: 0, endAngle: double, clockwise: true)
        
        UIColor.red.set()
        
        path2.lineWidth = 2
        
        path1.lineCapStyle = .square//线条拐角
        
        path1.lineJoinStyle = .bevel//终点处理
        
        path2.stroke()
        
        
        //绘制椭圆
        
        let path3 = UIBezierPath(ovalIn: CGRect(x: 200, y: 100, width: 100, height: 50))
        
        UIColor.red.set()
        
        path3.lineWidth = 2
        
        path3.stroke()
        
        //绘制圆形
        
        let path4 = UIBezierPath(ovalIn: CGRect(x: 200, y: 200, width: 100, height: 100))
        
        UIColor.red.set()
        
        path4.lineWidth = 2
        
        path4.stroke()
        
        //绘制三角形
        
        let path5 = UIBezierPath()
        
        UIColor.red.set()
        
        path5.move(to: CGPoint(x: 50, y: 350))//起始点
        
        path5.addLine(to: CGPoint(x: 200, y: 350))//添加线到哪个点
        
        path5.addLine(to: CGPoint(x: 125, y: 300))//添加线到哪个点
        
        path5.close()
        
        path5.stroke()
        
        //瞎JB画个
        
        let path6 = UIBezierPath()
        
        UIColor.red.set()
        
        path6.move(to: CGPoint(x: 200, y: 550))//移动到某一点
        
        path6.addQuadCurve(to: CGPoint(x: 200, y: 450), controlPoint: CGPoint(x: 400, y: 200))//带一个基准点的曲线
        
        path6.addCurve(to: CGPoint(x: 300, y: 200), controlPoint1: CGPoint(x: 200, y: 100), controlPoint2: CGPoint(x: 300, y: 500))//带两个基准点的曲线(基准点为拉引点，并不是必须到的点)
        
        path6.addArc(withCenter: CGPoint(x: 200, y: 500), radius: 100, startAngle: 0, endAngle: CGFloat(90 * Float.pi / 180), clockwise: true)//增加弧度
        
        path6.close()
        
        path6.stroke()
        
        
    }
 
}
