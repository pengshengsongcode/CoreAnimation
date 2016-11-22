//
//  TenViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/18.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class TenViewController: UIViewController {

    lazy var imageView: UIImageView = {
        let imageview = UIImageView(image: UIImage(named: "831339-b143eab37d0ec973"))
        
        imageview.frame = CGRect(x: 0, y: 0, width: 150, height: 100)
        
        imageview.center = self.view.center
        
        return imageview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.cyan
        
        view.addSubview(imageView)

    }
    
    /*
     - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
     {
     CAAnimationGroup *group = [CAAnimationGroup animation];
     
     // 平移
     CABasicAnimation *anim = [CABasicAnimation animation];
     
     anim.keyPath = @"position";
     
     anim.toValue = [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(200), arc4random_uniform(500))];
     
     // 缩放
     CABasicAnimation *anim1 = [CABasicAnimation animation];
     
     anim1.keyPath = @"transform.scale";
     
     // 0 ~ 1
     static CGFloat scale = 0.1;
     if (scale < 1) {
     scale = 1.5;
     }else{
     scale = 0.2;
     }
     anim1.toValue = @(scale);

     
     group.animations = @[anim,anim1,anim2];
     
     group.duration = 0.5;
     
     // 取消反弹
     // 告诉在动画结束的时候不要移除
     group.removedOnCompletion = NO;
     // 始终保持最新的效果
     group.fillMode = kCAFillModeForwards;
     
     [_redView.layer addAnimation:group forKey:nil];
     }
     */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //旋转
        
        let spring = CASpringAnimation(keyPath: "transform.rotation")
        
        spring.toValue = Float(arc4random_uniform(360)) / 180 * Float.pi
        
        //缩放
        
        let basic = CABasicAnimation(keyPath: "transform.scale")
        
        var scale: CGFloat = 0.1
        
        if scale < 1 {
            scale = 3
        }else {
            scale = 0.1
        }
        basic.toValue = (scale)
        
        //组
        let group = CAAnimationGroup()
        
        group.animations = [spring, basic]
        
        group.duration = 1
        
        // 取消反弹
        // 告诉在动画结束的时候不要移除
        group.isRemovedOnCompletion = false
        
        // 始终保持最新的效果
        group.fillMode = kCAFillModeForwards
        
        //重复动画(存在先后顺序的问题，需要先设置CA动画的属性)，再添加动画
        group.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        
        //自动颠倒
        group.autoreverses = true
        
        imageView.layer.add(group, forKey: "group")
        
    }

}
