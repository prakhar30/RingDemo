//
//  BaseRing.swift
//  RingDemo
//
//  Created by Prakhar Tripathi on 26/03/19.
//  Copyright © 2019 Prakhar Tripathi. All rights reserved.
//

import Foundation
import UIKit

class BaseRing: UIView {
    var circleLayer: CAShapeLayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0), radius: (frame.size.width / 2) - 20.0, startAngle: 0.0, endAngle: CGFloat(Double.pi * 2.0), clockwise: true)
        
        DrawHelpers.drawArcIn(view: self, with: circlePath, color: UIColor.clear)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
