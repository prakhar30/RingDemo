//
//  DrawHelpers.swift
//  RingDemo
//
//  Created by Prakhar Tripathi on 26/03/19.
//  Copyright © 2019 Prakhar Tripathi. All rights reserved.
//

import Foundation
import UIKit

class DrawHelpers {
    
    static func drawArcIn(view: UIView, with beizerPath: UIBezierPath, color: UIColor) {
        let path = CAShapeLayer()
        path.path = beizerPath.cgPath
        path.fillColor = UIColor.clear.cgColor
        path.strokeColor = color.cgColor
        path.lineWidth = 20.0
        path.strokeEnd = 1.0
        view.layer.addSublayer(path)
    }
    
    static func removeTopLayers(inView: UIView) {
        inView.layer.sublayers?.removeAll()
    }
    
    static func degreeToRadian(degree: Int) -> CGFloat {
        return CGFloat(Double(degree) * 0.0174533)
    }
}
