//
//  ViewController.swift
//  RingDemo
//
//  Created by Prakhar Tripathi on 26/03/19.
//  Copyright © 2019 Prakhar Tripathi. All rights reserved.
//

import UIKit

class RingDemoViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    var circleView = BaseRing()
    var centerPoint = CGPoint()
    var radius = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCircleView()
    }
    
    func addCircleView() {
        circleView = BaseRing(frame: CGRect(x: 0, y: 0, width: myView.frame.width, height: myView.frame.height))
        
        myView.addSubview(circleView)
        centerPoint = CGPoint(x: myView.frame.width / 2, y: myView.frame.height / 2)
        radius = (myView.frame.size.width / 2) - 20.0
    }

    @IBAction func modeAButtonAction(_ sender: Any) {
        DrawHelpers.removeTopLayers(inView: circleView)
        modeADraw()
    }
    
    @IBAction func modeBButtonAction(_ sender: Any) {
        DrawHelpers.removeTopLayers(inView: circleView)
    }
    
    func modeADraw() {
        let arc1 = UIBezierPath(arcCenter: centerPoint, radius: radius, startAngle: DrawHelpers.degreeToRadian(degree: 271), endAngle: DrawHelpers.degreeToRadian(degree: 315), clockwise: true)
        DrawHelpers.drawArcIn(view: circleView, with: arc1, color: unfilledRingColor)
        
        let arc2 = UIBezierPath(arcCenter: centerPoint, radius: radius, startAngle: DrawHelpers.degreeToRadian(degree: 317), endAngle: DrawHelpers.degreeToRadian(degree: 223), clockwise: true)
        DrawHelpers.drawArcIn(view: circleView, with: arc2, color: greenFilledRingColor)
        
        let arc3 = UIBezierPath(arcCenter: centerPoint, radius: radius, startAngle: DrawHelpers.degreeToRadian(degree: 225), endAngle: DrawHelpers.degreeToRadian(degree: 269), clockwise: true)
        DrawHelpers.drawArcIn(view: circleView, with: arc3, color: unfilledRingColor)
    }
    
    func modeBDraw() {
    }
}

