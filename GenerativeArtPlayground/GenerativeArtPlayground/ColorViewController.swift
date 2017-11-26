//
//  ColorViewController.swift
//  GenerativeArtPlayground
//
//  Created by 孙千航 on 11/8/17.
//  Copyright © 2017 IOS_programming. All rights reserved.
//

import UIKit
import Pastel


class ColorViewController: UIViewController {
    
    var value = 0.0
    
    @IBOutlet weak var seventhColorView: colorMultipleViews!
    
    @IBOutlet weak var eighthColorView: colorMultipleViews!
    
    @IBOutlet weak var ninthColorView: colorMultipleViews!
    
    @IBAction func tapToRemove(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    @IBOutlet weak var firstButton: UIButton!
 
    @IBOutlet weak var secondButton: UIButton!
    
    @IBOutlet weak var thirdButton: UIButton!
    
    @IBOutlet weak var fourthButton: UIButton!
    
    @IBOutlet weak var fifthButton: UIButton!
    
    @IBOutlet weak var sixthButton: UIButton!
    
    @IBOutlet weak var seventhButton: UIButton!
    
    @IBOutlet weak var eighthButton: UIButton!
    
    @IBOutlet weak var ninthButton: UIButton!
    
    @IBAction func colorChosen(_ sender: Any) {
        
        switch (sender as AnyObject).tag {
        case 1:
            
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 1.0, blueColorFunc: 1.0
            )
            
        case 2:
            
            value = value+1
            let x = Float(abs(sin(value/50)))
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.0, greenColorFunc: 0.0, blueColorFunc: x
            )
            
        case 3:
    
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.0, greenColorFunc: 1.0, blueColorFunc: 0.0
            )
            
        case 4:
     
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.0, greenColorFunc: 1.0, blueColorFunc: 1.0
            )
            
        case 5:
       
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 0.0, blueColorFunc: 0.0
            )
            
        case 6:
          
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 0.5, blueColorFunc: 0.5
            )
            
        case 7:
           
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 1.0, blueColorFunc: 0.0
            )
            
        case 8:
           
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.5, greenColorFunc: 0.5, blueColorFunc: 0.5
            )
            
        case 9:
          
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 0.5, blueColorFunc: 0.0
            )
            
        default:
            break
        }
        self.view.removeFromSuperview()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        secondButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        thirdButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        fourthButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        fifthButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        sixthButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        seventhButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        eighthButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        ninthColorView.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        
     
        
        
        self.view.backgroundColor = UIColor.white.withAlphaComponent(0.8)
        
        // Do any additional setup after loading the view.
        
        //for 7 color view
        let pastelView7 = PastelView(frame: seventhColorView.bounds)
        pastelView7.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
        
        // Custom Direction
        pastelView7.startPastelPoint = .bottomLeft
        pastelView7.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView7.animationDuration = 3.0
        
        // Custom Color
        pastelView7.setColors([
            UIColor(red: 250/255, green: 158/255, blue: 200/255, alpha: 1.0),
            UIColor(red: 200/255, green: 120/255, blue: 100/255, alpha: 1.0),
            UIColor(red: 180/255, green: 255/255, blue: 50/255, alpha: 1.0)])
        
        pastelView7.startAnimation()
  
        seventhColorView.insertSubview(pastelView7, at: 9)
//        pastelView7.center = CGPoint(x: seventhColorView.center.x, y: seventhColorView.center.y)
        
        seventhColorView.layer.cornerRadius = 0.5 * firstButton.bounds.size.width

        
        //for 8 color view
        let pastelView8 = PastelView(frame: eighthColorView.bounds)
        
        // Custom Direction
        pastelView8.startPastelPoint = .bottomLeft
        pastelView8.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView8.animationDuration = 3.0
        
        // Custom Color
        pastelView8.setColors([
            UIColor(red: 250/255, green: 158/255, blue: 255/255, alpha: 1.0),
            UIColor(red: 200/255, green: 120/255, blue: 127/255, alpha: 1.0),
            UIColor(red: 180/255, green: 255/255, blue: 217/255, alpha: 1.0)])
        
        pastelView8.startAnimation()
        view.insertSubview(pastelView8, at: 9)
        pastelView8.center = CGPoint(x: eighthColorView.center.x, y: eighthColorView.center.y)
        
        
        //for 9 color view
        let pastelView9 = PastelView(frame: ninthColorView.bounds)
        
        // Custom Direction
        pastelView9.startPastelPoint = .bottomLeft
        pastelView9.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView9.animationDuration = 3.0
        
        // Custom Color
        pastelView9.setColors([
                              UIColor(red: 32/255, green: 158/255, blue: 255/255, alpha: 1.0),
                              UIColor(red: 90/255, green: 120/255, blue: 127/255, alpha: 1.0),
                              UIColor(red: 58/255, green: 255/255, blue: 217/255, alpha: 1.0)])
        
        pastelView9.startAnimation()
        view.insertSubview(pastelView9, at: 9)
        pastelView9.center = CGPoint(x: ninthColorView.center.x, y: ninthColorView.center.y)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

