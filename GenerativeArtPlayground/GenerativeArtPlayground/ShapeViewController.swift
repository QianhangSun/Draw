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
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "MainPopUp") as! ViewController
        let instance = generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm
        
        switch (sender as AnyObject).tag{
            
        case 1:
            instance.typeID = 1
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.shapeButton.setImage(UIImage(named:"shape-1"), for: .normal)
            
        
        case 2:
            instance.typeID = 2
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)
            
            firstViewController.shapeButton.setImage(UIImage(named:"shape-2"), for: .normal)
         
        case 3:
            instance.typeID = 3
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)
            firstViewController.shapeButton.setImage(UIImage(named:"shape-3"), for: .normal)
        case 4:
            instance.typeID = 4
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)
            firstViewController.shapeButton.setImage(UIImage(named:"shape-4"), for: .normal)
            
        case 5:
            instance.typeID = 5
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)
            firstViewController.shapeButton.setImage(UIImage(named:"shape-5"), for: .normal)
            
        case 6:
            instance.typeID = 6
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.shapeButton.setImage(UIImage(named:"shape-6"), for: .normal)
            
        case 7:
            instance.typeID = 7
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.shapeButton.setImage(UIImage(named:"shape-7"), for: .normal)
            
        case 8:
            instance.typeID = 8
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.shapeButton.setImage(UIImage(named:"shape-8"), for: .normal)
            
        case 9:
            instance.typeID = 9
            instance.typeOfPattern = "shape"
            self.view.removeFromSuperview()
            self.present(firstViewController, animated: false)

            firstViewController.shapeButton.setImage(UIImage(named:"shape-9"), for: .normal)
        default:
            break
      
        }
              firstViewController.imageView.image = instance.imageStack.last
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
