//
//  LineViewController.swift
//  GenerativeArtPlayground
//
//  Created by 孙千航 on 11/8/17.
//  Copyright © 2017 IOS_programming. All rights reserved.
//


import UIKit

class LineViewController: UIViewController {
    
    @IBAction func tapToRemove(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    

    @IBAction func switchLine(_ sender: Any) {
        let instance = generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm
        switch (sender as AnyObject).tag{
        case 1:
            instance.typeID = 1
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
        case 2:
            instance.typeID = 2
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
        case 3:
            instance.typeID = 3
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
        case 4:
            instance.typeID = 4
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
            
        case 5:
            instance.typeID = 5
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
            
            
        case 6:
            instance.typeID = 6
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
            
            
        case 7:
            instance.typeID = 7
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
            
            
            
        case 8:
            instance.typeID = 8
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
            
            
        case 9:
            instance.typeID = 9
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            break
            
        default:
            break
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
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

