//
//  ColorViewController.swift
//  GenerativeArtPlayground
//
//  Created by 孙千航 on 11/8/17.
//  Copyright © 2017 IOS_programming. All rights reserved.
//

import UIKit



class ColorViewController: UIViewController {
    
    
    
    @IBAction func tapToRemove(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    @IBAction func colorChosen(_ sender: Any) {
        
        switch (sender as AnyObject).tag {
        case 1:
   
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.0, greenColorFunc: 0.0, blueColorFunc: 0.0
            )
            
        case 2:
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.0, greenColorFunc: 0.0, blueColorFunc: 1.0
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
                redColorFunc: 1.0, greenColorFunc: 0.0, blueColorFunc: 0.0
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
        self.view.backgroundColor = UIColor.white.withAlphaComponent(0.8)
        
        // Do any additional setup after loading the view.
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

