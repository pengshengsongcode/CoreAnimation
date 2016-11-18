//
//  ViewController.swift
//  贝塞尔曲线
//
//  Created by 彭盛凇 on 2016/11/9.
//  Copyright © 2016年 huangbaoche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dataList : Array <String> = ["直接使用view中的UIBezierPath绘制矩形图", "配合使用绘图(设置path)", "配合使用绘图(设置layer)", "CAGradientLayer颜色渐变", "CAGradientLayer颜色渐变动画", "CASpringAnimation动画展示", "画板"]
    lazy var tableView: UITableView = {
        let tableview = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        tableview.delegate = self
        tableview.dataSource = self
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        title = "ViewController"
        
        view.addSubview(tableView)
        
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        if dataList[indexPath.row] == "直接使用view中的UIBezierPath绘制矩形图"{
            navigationController?.pushViewController(FirstViewController(), animated: true); return
        }
        
        if dataList[indexPath.row] == "配合使用绘图(设置path)"{
            navigationController?.pushViewController(SecondViewController(), animated: true); return
        }
        
        if dataList[indexPath.row] == "配合使用绘图(设置layer)" {
            navigationController?.pushViewController(ThirdViewController(), animated: true); return
        }
        
        if dataList[indexPath.row] == "CASpringAnimation动画展示" {
            navigationController?.pushViewController(FourthViewController(), animated: true); return
        }
        
        if dataList[indexPath.row] == "画板"{
            navigationController?.pushViewController(FifthViewController(), animated: true); return
        }
        
        if dataList[indexPath.row] == "CAGradientLayer颜色渐变" {
            navigationController?.pushViewController(SixthViewController(), animated: true); return
        }
        
        if dataList[indexPath.row] == "CAGradientLayer颜色渐变动画" {
            navigationController?.pushViewController(SeventhViewController(), animated: true); return
        }
        
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        
        cell.textLabel?.text = dataList[indexPath.row]
        
        return cell
        
    }
    
}
