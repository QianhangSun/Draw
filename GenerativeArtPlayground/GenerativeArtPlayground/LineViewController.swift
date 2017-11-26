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
        case 2:
            instance.typeID = 2
            instance.typeOfPattern = "curve"
        case 3:
            break
        case 4:
            instance.typeID = 4
            instance.typeOfPattern = "curve"
        default:
            break
        }
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

