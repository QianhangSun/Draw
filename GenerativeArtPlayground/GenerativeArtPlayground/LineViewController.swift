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
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "MainPopUp") as! ViewController
        let instance = generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm
        switch (sender as AnyObject).tag{
        case 1:
            instance.typeID = 1
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-1"), for: .normal)
            
            break
        case 2:
            instance.typeID = 2
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-2"), for: .normal)

            break
        case 3:
            instance.typeID = 3
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-3"), for: .normal)

            break
        case 4:
            instance.typeID = 4
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-4"), for: .normal)

            break
            
        case 5:
            instance.typeID = 5
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-5"), for: .normal)

            break
            
            
        case 6:
            instance.typeID = 6
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-6"), for: .normal)

            break
            
            
        case 7:
            instance.typeID = 7
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-7"), for: .normal)

            break
            
            
            
        case 8:
            instance.typeID = 8
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-8"), for: .normal)

            break
            
            
        case 9:
            instance.typeID = 9
            instance.typeOfPattern = "curve"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.lineButton.setImage(UIImage(named:"lines-9"), for: .normal)

            break
            
        default:
            break
            
            
        }
         firstViewController.imageView.image = instance.imageStack.last
        generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
            redColorFunc: 1.0, greenColorFunc: 1.0, blueColorFunc: 1.0
        )
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
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

