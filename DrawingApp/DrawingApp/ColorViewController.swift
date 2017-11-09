//
//  ColorViewController.swift
//  DrawingApp
//
//  Created by 孙千航 on 10/29/17.
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
            UserDefaults.standard.set(0.0, forKey: "red")
            UserDefaults.standard.set(0.0, forKey: "green")
            UserDefaults.standard.set(0.0, forKey: "blue")
            self.view.removeFromSuperview()
        case 2:
            UserDefaults.standard.set(0.0, forKey: "red")
            UserDefaults.standard.set(0.0, forKey: "green")
            UserDefaults.standard.set(1.0, forKey: "blue")
            self.view.removeFromSuperview()
        case 3:
            UserDefaults.standard.set(0.0, forKey: "red")
            UserDefaults.standard.set(1.0, forKey: "green")
            UserDefaults.standard.set(0.0, forKey: "blue")
            self.view.removeFromSuperview()
        case 4:
            UserDefaults.standard.set(0.0, forKey: "red")
            UserDefaults.standard.set(1.0, forKey: "green")
            UserDefaults.standard.set(1.0, forKey: "blue")
            self.view.removeFromSuperview()
        case 5:
            UserDefaults.standard.set(1.0, forKey: "red")
            UserDefaults.standard.set(0.0, forKey: "green")
            UserDefaults.standard.set(0.0, forKey: "blue")
            self.view.removeFromSuperview()
        case 6:
            UserDefaults.standard.set(1.0, forKey: "red")
            UserDefaults.standard.set(0.0, forKey: "green")
            UserDefaults.standard.set(1.0, forKey: "blue")
            self.view.removeFromSuperview()
        case 7:
            UserDefaults.standard.set(1.0, forKey: "red")
            UserDefaults.standard.set(1.0, forKey: "green")
            UserDefaults.standard.set(0.0, forKey: "blue")
            self.view.removeFromSuperview()
        case 8:
            UserDefaults.standard.set(0.5, forKey: "red")
            UserDefaults.standard.set(0.5, forKey: "green")
            UserDefaults.standard.set(0.5, forKey: "blue")
            self.view.removeFromSuperview()
        case 9:
            UserDefaults.standard.set(1.0, forKey: "red")
            UserDefaults.standard.set(0.5, forKey: "green")
            UserDefaults.standard.set(0.0, forKey: "blue")
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
