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
        
        modeADraw()
    }

    @IBAction func modeAButtonAction(_ sender: Any) {
        DrawHelpers.removeTopLayers(inView: circleView)
        modeADraw()
    }
    
    @IBAction func modeBButtonAction(_ sender: Any) {
        DrawHelpers.removeTopLayers(inView: circleView)
        modeBDraw()
    }
    
    func modeADraw() {
        for i in 0..<3 {
            let arc = UIBezierPath(arcCenter: centerPoint, radius: radius, startAngle: DrawHelpers.degreeToRadian(degree: modeADegreeArray[i*2]), endAngle: DrawHelpers.degreeToRadian(degree: modeADegreeArray[(i*2) + 1]), clockwise: true)
            DrawHelpers.drawArcIn(view: circleView, with: arc, color: modeAColorSequence[i])
        }
    }
    
    func modeBDraw() {
        for i in 0..<7 {
            let arc = UIBezierPath(arcCenter: centerPoint, radius: radius, startAngle: DrawHelpers.degreeToRadian(degree: modeBDegreeArray[i*2]), endAngle: DrawHelpers.degreeToRadian(degree: modeBDegreeArray[(i*2) + 1]), clockwise: true)
            DrawHelpers.drawArcIn(view: circleView, with: arc, color: modeBColorSequence[i])
        }
    }
}

