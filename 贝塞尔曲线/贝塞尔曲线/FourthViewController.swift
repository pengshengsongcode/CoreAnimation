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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        view1.backgroundColor = UIColor.red
        view.addSubview(view1)
        
        /*
         /* The mass of the object attached to the end of the spring. Must be greater
         than 0. Defaults to one. */
         
         open var mass: CGFloat
         
         
         /* The spring stiffness coefficient. Must be greater than 0.
         * Defaults to 100. */
         
         open var stiffness: CGFloat
         
         
         /* The damping coefficient. Must be greater than or equal to 0.
         * Defaults to 10. */
         
         open var damping: CGFloat
         
         
         /* The initial velocity of the object attached to the spring. Defaults
         * to zero, which represents an unmoving object. Negative values
         * represent the object moving away from the spring attachment point,
         * positive values represent the object moving towards the spring
         * attachment point. */
         
         open var initialVelocity: CGFloat
         
         
         /* Returns the estimated duration required for the spring system to be
         * considered at rest. The duration is evaluated for the current animation
         * parameters. */
         
         open var settlingDuration: CFTimeInterval { get }
         */
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let spring = CASpringAnimation(keyPath: "position.x")
        spring.damping = 5;
        spring.stiffness = 100;
        spring.mass = 1;
        spring.initialVelocity = 0;
        spring.fromValue = view1.layer.position.x;
        spring.toValue = view1.layer.position.x + 50;
        spring.duration = spring.settlingDuration;
        
        view1.layer.add(spring, forKey: spring.keyPath)

    }
    
    
}
