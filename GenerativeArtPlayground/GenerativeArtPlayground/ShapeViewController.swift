//
//  ShapeViewController.swift
//  GenerativeArtPlayground
//
//  Created by 孙千航 on 11/8/17.
//  Copyright © 2017 IOS_programming. All rights reserved.
//

import UIKit

class ShapeViewController: UIViewController {

    @IBAction func tapToRemove(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
    
    @IBAction func switchShape(_ sender: Any)
    {

        
        let instance = generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm
        switch (sender as AnyObject).tag{
            
        case 1:
            instance.typeID = 1
            instance.typeOfPattern = "shape"
        
            self.view.removeFromSuperview()
        case 2:
            instance.typeID = 2
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
        case 3:
            instance.typeID = 3
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
        case 4:
            instance.typeID = 4
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            
        case 5:
            instance.typeID = 5
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            
        case 6:
            instance.typeID = 6
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            
        case 7:
            instance.typeID = 7
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            
        case 8:
            instance.typeID = 8
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            
        case 9:
            instance.typeID = 9
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
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
