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
    
    
    
    func generatingPatterns(fromPoint: CGPoint, toPoint: CGPoint, typeOfPattenrn: String, typeID: Int) {
       
        if typeOfPattenrn == "shape"{
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
            case 2:
                break
            default:
                break
            }
        } else if typeOfPattenrn == "curve" {
            switch typeID {
            case 1: break
            
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
