//
//  DrawView.swift
//  Drawing
//
//  Created by liuyongjia on 15/10/16.
//  Copyright © 2015年 liuyongjia. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var bezier = UIBezierPath()
    override func awakeFromNib() {
        print("awake from nib")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bezier.lineWidth = 5
        bezier.lineCapStyle = .Round
        bezier.lineJoinStyle = .Round
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let point = (touches.first as UITouch!).locationInView(self)
        bezier.moveToPoint(point)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let point = (touches.first as UITouch!).locationInView(self)
        bezier.addLineToPoint(point)
        
        self.setNeedsDisplay()
    }
    
    
    override func drawRect(rect: CGRect) {
        UIColor.clearColor().setFill()
        UIColor.redColor().setStroke()
        
        self.bezier.stroke()
    }

}
