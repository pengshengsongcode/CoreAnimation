//
//  FirstViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/9.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    var view1: UIView!
    var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        view1.backgroundColor = UIColor.red
        view.addSubview(view1)
        
        view2 = UIView(frame: CGRect(x: 200, y: 300, width: 100, height: 50))
        view2.backgroundColor = UIColor.red
        view.addSubview(view2)


    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        //eg1
        let spring1 = CASpringAnimation(keyPath: "position")
        
        spring1.fromValue = NSValue(cgPoint: view1.layer.position)
        
        //需要封装成为对象
        spring1.toValue = NSValue(cgPoint: CGPoint(x: view1.layer.position.x , y: view1.layer.position.y * 5))
        
        spring1.duration = spring1.settlingDuration
        
        spring1.isRemovedOnCompletion = false
        
        spring1.fillMode = kCAFillModeForwards
        
        view1.layer.add(spring1, forKey: spring1.keyPath)
        
        //eg2
        
        //在layer上加载弹簧动画
        let spring = CASpringAnimation(keyPath: "position.x")
        
        //质量，影响图层运动时的弹簧惯性，质量越大，弹簧拉伸和压缩的幅度越大如果把质量改成10，则动画变的特别慢
        spring.mass = 1
        
        //刚度系数(劲度系数/弹性系数)，刚度系数越大，形变产生的力就越大，运动越快
        spring.stiffness = 1000
        
        //阻尼系数，阻止弹簧伸缩的系数，阻尼系数越大，停止越快
        spring.damping = 5
        
        //初始速率，动画视图的初始速度大小速率为正数时，速度方向与运动方向一致，速率为负数时，速度方向与运动方向相反如果把速率改成-20，则动画变的运动方向快，相反方向慢
        spring.initialVelocity = 0
        
        //从哪到哪
        spring.fromValue = view1.layer.position.x
        spring.toValue = view1.layer.position.x + 50
        spring.byValue = view1.layer.position.y + 50
        
        //设置动画持续时间
        spring.duration = spring.settlingDuration
        
        //解决回到原始位置
        spring1.fillMode = kCAFillModeForwards
        spring.isRemovedOnCompletion = false
        
        //结算时间 返回弹簧动画到停止时的估算时间，根据当前的动画参数估算通常弹簧动画的时间使用结算时间比较准确
        print(spring.settlingDuration)
        
        view2.layer.add(spring, forKey: spring.keyPath)

    }
    
    
}
