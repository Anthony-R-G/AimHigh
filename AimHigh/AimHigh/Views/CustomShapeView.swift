//
//  CustomShapeView.swift
//  AimHigh
//
//  Created by Anthony Gonzalez on 6/16/20.
//  Copyright © 2020 Chisme y Cafecito. All rights reserved.
//

import UIKit

//WHAT THE FUCK IS THIS SHIT??
//hi

@IBDesignable
class CustomShapeView: UIView {
    
    @IBInspectable var color : UIColor? = UIColor.gray {
        didSet {
            //            self.layer.backgroundColor = self.color?.cgColor
        }
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
        
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //get the size of the view
        let size = self.bounds.size
        //get 4 points for the shape layer
        let p1 = self.bounds.origin
        let p2 = CGPoint(x: p1.x + size.width, y: p1.y)
        let p3 = CGPoint(x: p2.x, y: size.height)
        let p4 = CGPoint(x: p1.x, y: size.height - 30)
        
        //create the path
        let path = UIBezierPath()
        path.move(to: p1)
        path.addLine(to: p2)
        path.addLine(to: p3)
        path.addLine(to: p4)
        path.close()
        (color ?? UIColor.gray).set()
        path.fill()
        
    }
    
}
