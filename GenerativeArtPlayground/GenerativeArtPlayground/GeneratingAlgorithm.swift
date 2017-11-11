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
    var colorRed: Float = 0.0
    var colorGreen: Float = 0.0
    var colorBlue: Float = 0.0
    
    var typeOfPattern:String = "curve"
    var typeID:Int = 1
    
    
    func generatingPatterns(fromPoint: CGPoint, toPoint: CGPoint) {
       
        if typeOfPattern == "shape"{
            switch typeID {
            case 1:
                let context = UIGraphicsGetCurrentContext()
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
                break
            default:
                break
            }
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
