//
//  GeneratingAlgorithm.swift
//  GenerativeArtPlayground
//
//  Created by Jiahui Zhou on 11/11/17.
//  Copyright © 2017 IOS_programming. All rights reserved.
//

import Foundation
import UIKit

class generatingAlogrithm {
    static let sharedInstanceOfGeneratingAlgorithm : generatingAlogrithm = generatingAlogrithm()
    
    
    //RGB
    var colorRed: Float = 1.0
    var colorGreen: Float = 1.0
    var colorBlue: Float = 1.0
    var n = 0
    var typeOfPattern:String = "curve"
    var typeID:Int = 1
    
    
    func generatingPatterns(fromPoint: CGPoint, toPoint: CGPoint) {
        let context = UIGraphicsGetCurrentContext()
        if typeOfPattern == "shape"{
            switch typeID {
            case 1:

                let xJudge = fromPoint.x .truncatingRemainder(dividingBy: 10)
                let yJudge = fromPoint.y .truncatingRemainder(dividingBy: 10)
                let offset:CGFloat = 15.0
                let weight = abs(pow(fabs(toPoint.y - fromPoint.y),2)+pow(fabs(toPoint.x - fromPoint.x), 2))/10
                let rect = CGRect(x: fromPoint.x-offset, y: fromPoint.y, width: 10*(1+weight).truncatingRemainder(dividingBy: 50), height: 10*(1+weight).truncatingRemainder(dividingBy: 50))
                let rect2 = CGRect(x: fromPoint.x+offset, y: fromPoint.y, width: 10*(1+weight).truncatingRemainder(dividingBy: 50), height: 10*(1+weight).truncatingRemainder(dividingBy: 50))
                
                if xJudge == 0 || yJudge == 0{
                    context?.addEllipse(in: rect)
                    context?.addEllipse(in: rect2)
                }
                context?.setBlendMode(CGBlendMode.normal)
                context?.setLineWidth(5.0)
                context?.setStrokeColor(UIColor(red: CGFloat(colorRed), green:CGFloat(colorGreen), blue: CGFloat(colorBlue), alpha: 1.0).cgColor)
                context?.strokePath()
            case 2:
                let context = UIGraphicsGetCurrentContext()
                context?.move(to:CGPoint(x: fromPoint.x, y: fromPoint.y))
                context?.addLine(to:CGPoint(x: toPoint.x, y: toPoint.y))
                context?.move(to:CGPoint(x: 375-fromPoint.x, y: fromPoint.y))
                context?.addLine(to:CGPoint(x: 375-toPoint.x, y: toPoint.y))
                context?.setLineWidth(5.0)
                
            case 3:
                let context = UIGraphicsGetCurrentContext()
                context?.move(to:CGPoint(x: fromPoint.x, y: fromPoint.y))
                context?.addLine(to:CGPoint(x: toPoint.x, y: toPoint.y))
                context?.move(to:CGPoint(x: 375-fromPoint.x, y: fromPoint.y))
                context?.addLine(to:CGPoint(x: 375-toPoint.x, y: toPoint.y))
                context?.move(to:CGPoint(x: 375-fromPoint.x, y: 667-fromPoint.y))
                context?.addLine(to:CGPoint(x: 375-toPoint.x, y: 667-toPoint.y))
                context?.move(to:CGPoint(x: fromPoint.x, y: 667-fromPoint.y))
                context?.addLine(to:CGPoint(x: toPoint.x, y: 667-toPoint.y))
                context?.setBlendMode(CGBlendMode.normal)
                context?.setLineWidth(5.0)
            case 4:
                let context = UIGraphicsGetCurrentContext()
                context?.move(to:CGPoint(x: fromPoint.x, y: fromPoint.y))
                context?.addQuadCurve(to: CGPoint(x:toPoint.x,y:toPoint.y), control: CGPoint(x: 50, y: 150))
                context?.setLineWidth(2.0)
            default:
                break
            }
            
            context?.setStrokeColor(UIColor(red: CGFloat(colorRed), green:CGFloat(colorGreen), blue: CGFloat(colorBlue), alpha: 1.0).cgColor)
            context?.strokePath()
            
            
        } else if typeOfPattern == "curve" {
            switch typeID {
            case 1:
                let context = UIGraphicsGetCurrentContext()
                
                context?.move(to:CGPoint(x: fromPoint.x, y: fromPoint.y))
                context?.addLine(to:CGPoint(x: toPoint.x, y: toPoint.y))
                context?.setBlendMode(CGBlendMode.normal)
                context?.setLineWidth(5.0)
                context?.setStrokeColor(UIColor(red: CGFloat(colorRed), green:CGFloat(colorGreen), blue: CGFloat(colorBlue), alpha: 1.0).cgColor)
                context?.strokePath()
                break
               
            
            default: break
            }
        }
    }
    
    
    
    func colorChange(redColorFunc: Float, greenColorFunc: Float, blueColorFunc: Float)  {
        colorRed = redColorFunc
        colorGreen = greenColorFunc
        colorBlue = blueColorFunc
    }
    
    

    
    
}
