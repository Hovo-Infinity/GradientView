//
//  GradientView.swift
//  GradientView
//
//  Created by Hovhannes Stepanyan on 11/23/18.
//  Copyright © 2018 Hovhannes Stepanyan. All rights reserved.
//

import UIKit

class GradientView: UIView {
    var startColor: UIColor = .white {
        didSet {
            setNeedsDisplay()
        }
    }
    var endColor: UIColor = .white {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        context.saveGState()
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        guard let startColorComponents = startColor.cgColor.components,
            startColorComponents.count == 4,
            let endColorComponents = endColor.cgColor.components,
            endColorComponents.count == 4 else { return }
        let colorComponents: [CGFloat] = [startColorComponents[0], startColorComponents[1],
                                          startColorComponents[2], startColorComponents[3],
                                          endColorComponents[0], endColorComponents[1],
                                          endColorComponents[2], endColorComponents[3]]
        
        let locations:[CGFloat] = [0.0, 1.0]
        guard let gradient = CGGradient(colorSpace: colorSpace,colorComponents: colorComponents,locations: locations,count: 2) else { return }
        
        let startPoint = CGPoint(x: 0, y: self.bounds.height)
        let endPoint = CGPoint(x: self.bounds.width,y: self.bounds.height)
        
        context.drawLinearGradient(gradient, start: startPoint, end: endPoint, options: CGGradientDrawingOptions(rawValue: UInt32(0)))
        
        context.restoreGState()
    }
}
