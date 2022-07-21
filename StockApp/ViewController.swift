//
//  ViewController.swift
//  StockApp
//
//  Created by AndyLin on 2022/7/19.
//

import UIKit

 
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let aDegree = CGFloat.pi / 180
        let lineWidth: CGFloat = 10
        let radius: CGFloat = 50
        let startDegree: CGFloat = 270
        let circlePath = UIBezierPath(ovalIn: CGRect(x: lineWidth, y: lineWidth, width: radius*2, height: radius*2))
        
        let circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.strokeColor = UIColor.gray.cgColor
        circleLayer.lineWidth = lineWidth
        circleLayer.fillColor = UIColor.clear.cgColor
        let percentage: CGFloat = 60
        //利用以下程式控制圓環開始和結束的角度
        let percentagePath = UIBezierPath(arcCenter: CGPoint(x: lineWidth + radius, y: lineWidth + radius), radius: radius, startAngle: aDegree * startDegree, endAngle: aDegree * (startDegree + 360 * percentage / 100), clockwise: true)
        let percentageLayer = CAShapeLayer()
        percentageLayer.path = percentagePath.cgPath
        percentageLayer.strokeColor  = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        percentageLayer.lineWidth = lineWidth
        percentageLayer.fillColor = UIColor.clear.cgColor
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 2*(radius+lineWidth), height: 2*(radius+lineWidth)))
        label.textAlignment = .center
        label.text = "\(percentage)%"
        let view = UIView(frame: label.frame)
        view.layer.addSublayer(circleLayer)
        view.layer.addSublayer(percentageLayer)
        view.addSubview(label)
        view
    }


    
}

