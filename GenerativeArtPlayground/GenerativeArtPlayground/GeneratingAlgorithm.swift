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
    
    
    @objc func timerFinished(_ sender: CGPoint)  {
//        sender.translateBy(x: 2.0, y: 2.0 )
        
    }
    
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
//                let mysize:CGSize = CGSize(width:1, height:-1.0)
//                context?.setShadow(offset: mysize, blur: 1.0)
                context?.setStrokeColor(UIColor(red: CGFloat(colorRed), green:CGFloat(colorGreen), blue: CGFloat(colorBlue), alpha: 1.0).cgColor)
//                Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(self.timerFinished(_ toPoint)), userInfo: nil, repeats: true)
                
                context?.strokePath()
            case 2:
                break
            default:
                break
            }
        } else if typeOfPattern == "curve" {
            switch typeID {
            case 1:
                break
            case 2: break
            case 3: break
            case 4:
                let context = UIGraphicsGetCurrentContext()
                
                context?.move(to:CGPoint(x: fromPoint.x, y: fromPoint.y))
                context?.addLine(to:CGPoint(x: toPoint.x, y: toPoint.y))
                
                context?.setBlendMode(CGBlendMode.normal)
                context?.setLineWidth(5.0)
                //                let xJudge = fromPoint.x .truncatingRemainder(dividingBy: 3)
                //                let yJudge = fromPoint.y .truncatingRemainder(dividingBy: 3)
                //                if xJudge == 0 || yJudge == 0{
                //                    context?.addArc(tangent1End: toPoint, tangent2End: CGPoint(x:fromPoint.x+10.0, y:fromPoint.y), radius: 100.0)
                //                    context?.addCurve(to: toPoint, control1: fromPoint, control2: fromPoint)
                //                }
                context?.strokePath()
                let mysize:CGSize = CGSize(width:5, height:-5.0)
                context?.setShadow(offset: mysize, blur: 1.0)
                let fromColor: UIColor = UIColor(red: CGFloat(colorRed), green:CGFloat(colorGreen), blue: CGFloat(colorBlue), alpha: 1.0)
                let toColor: UIColor = UIColor(red: CGFloat(colorRed), green:CGFloat(colorGreen), blue: CGFloat(colorBlue), alpha: 0.0)
                let mygradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors:[fromColor.cgColor, toColor.cgColor] as CFArray, locations:[0.0, 1.0])!
                //                context?.drawRadialGradient(mygradient, startCenter: fromPoint, startRadius: 10.0, endCenter: toPoint, endRadius: 20.0, options: CGGradientDrawingOptions.drawsAfterEndLocation)
                context?.drawLinearGradient(mygradient, start: CGPoint(x:toPoint.x+10,y:toPoint.y+10), end: fromPoint, options: CGGradientDrawingOptions.drawsAfterEndLocation)
                
                //                context?.setLineJoin(CGLineJoin(rawValue: 3200)!)
                //                context?.setMiterLimit(2.0)
                context?.setStrokeColor(UIColor(red: CGFloat(colorRed), green:CGFloat(colorGreen), blue: CGFloat(colorBlue), alpha: 0.2).cgColor)
                
                //                context?.setAlpha(0.3)
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
