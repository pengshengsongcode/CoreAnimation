//
//  NinthViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/18.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class NinthViewController: UIViewController {

    lazy var imageView: UIImageView = {
        let imageview = UIImageView(image: UIImage(named: "831339-b143eab37d0ec973"))
        
        imageview.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        
        imageview.center = self.view.center
        

        
        return imageview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.orange
        
        view.addSubview(imageView)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let transition = CATransition()
        
        /*
         type的enum值如下：
         kCATransitionFade 渐变
         kCATransitionMoveIn 覆盖
         kCATransitionPush 推出
         kCATransitionReveal 揭开
         
         私有动画类型的值有："cube"、"suckEffect"、"oglFlip"、 "rippleEffect"、"pageCurl"、"pageUnCurl"等等。
         
         */
        
//        transition.type = kCATransitionFade
        
        transition.setValue("rippleEffect", forKey: "type")
        
        /*
         subtype的enum值如下：
         kCATransitionFromRight 从右边
         kCATransitionFromLeft 从左边
         kCATransitionFromTop 从顶部
         kCATransitionFromBottom 从底部
         
         */
        
        transition.subtype = kCATransitionFromRight
        
        transition.duration = 2
        
        imageView.image = UIImage(named: "屏幕快照 2016-11-18 下午5.31.42")
        
        view.layer.add(transition, forKey: "123")
        
        
    }

}
