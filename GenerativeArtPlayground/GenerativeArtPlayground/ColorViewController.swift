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
    
    @IBOutlet weak var firstColorView: UIView!
    @IBOutlet weak var secondColorView: UIView!
    @IBOutlet weak var thirdColorView: UIView!
    
    @IBOutlet weak var fourthColorView: UIView!
    @IBOutlet weak var fifthColorView: UIView!
    @IBOutlet weak var sixthColorView: colorMultipleViews!
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
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "MainPopUp") as! ViewController
        
        
        switch (sender as AnyObject).tag {
        case 1:
            
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 1.0, blueColorFunc: 1.0
            )
            self.present(firstViewController, animated: false)
            
            firstViewController.colorButton.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        case 2:
            
//            value = value+1
//            let x = Float(abs(sin(value/50)))
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.0, greenColorFunc: 0.0, blueColorFunc: 1.0
            )
            self.present(firstViewController, animated: false)
            firstViewController.colorButton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            
        case 3:
    
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.0, greenColorFunc: 1.0, blueColorFunc: 0.0
            )
            self.present(firstViewController, animated: false)
            firstViewController.colorButton.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
            
        case 4:
     
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.0, greenColorFunc: 1.0, blueColorFunc: 1.0
            )
            self.present(firstViewController, animated: false)
            firstViewController.colorButton.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        case 5:
       
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 0.0, blueColorFunc: 0.0
            )
            self.present(firstViewController, animated: false)
            firstViewController.colorButton.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            
        case 6:
          
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 0.5, blueColorFunc: 0.5
            )
            self.present(firstViewController, animated: false)
            firstViewController.colorButton.backgroundColor = UIColor(red: 1.0, green: 0.5, blue: 0.5, alpha: 1.0)
            
        case 7:
           
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 1.0, blueColorFunc: 0.0
            )
            
            self.present(firstViewController, animated: false)
            firstViewController.colorButton.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
            
        case 8:
           
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 0.5, greenColorFunc: 0.5, blueColorFunc: 0.5
            )
            
            self.present(firstViewController, animated: false)
            firstViewController.colorButton.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
            
        case 9:
          
            generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
                redColorFunc: 1.0, greenColorFunc: 0.5, blueColorFunc: 0.0
            )
            self.present(firstViewController, animated: false)
            firstViewController.colorButton.backgroundColor = UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
        default:
            break
        }
        self.view.removeFromSuperview()
         firstViewController.imageView.image = generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.imageStack.last
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        // Do any additional setup after loading the view.
        
        
        //for 1 color view
        let pastelView1 = PastelView(frame: eighthColorView.bounds)
        
        // Custom Direction
        pastelView1.startPastelPoint = .bottomLeft
        pastelView1.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView1.animationDuration = 3.0
        
        // Custom Color
        pastelView1.setColors([
            UIColor(red: 250/255, green: 255/255, blue: 255/255, alpha: 1.0),
            UIColor(red: 240/255, green: 255/255, blue: 255/255, alpha: 0.5),
            UIColor(red: 245/255, green: 255/255, blue: 255/255, alpha: 0.2)])
        
        pastelView1.startAnimation()
        view.insertSubview(pastelView1, at: 9)
        pastelView1.center = CGPoint(x: firstColorView.center.x, y: firstColorView.center.y)
        
        
        
        //for 2 color view
        let pastelView2 = PastelView(frame: secondColorView.bounds)
        
        // Custom Direction
        pastelView2.startPastelPoint = .bottomLeft
        pastelView2.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView2.animationDuration = 3.0
        
        // Custom Color
        pastelView2.setColors([
            UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1.0),
            UIColor(red: 0/255, green: 0/255, blue: 245/255, alpha: 0.5),
            UIColor(red: 0/255, green: 0/255, blue: 220/255, alpha: 0.2)])
        
        pastelView2.startAnimation()
        view.insertSubview(pastelView2, at: 9)
        pastelView2.center = CGPoint(x: secondColorView.center.x, y: secondColorView.center.y)
        
        
        
        
        
        //for 3 color view
        let pastelView3 = PastelView(frame: thirdColorView.bounds)
        
        // Custom Direction
        pastelView3.startPastelPoint = .bottomLeft
        pastelView3.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView3.animationDuration = 3.0
        
        // Custom Color
        pastelView3.setColors([
            UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1.0),
            UIColor(red: 0/255, green: 245/255, blue: 0/255, alpha: 0.5),
            UIColor(red: 0/255, green: 220/255, blue: 0/255, alpha: 0.2)])
        
        pastelView3.startAnimation()
        view.insertSubview(pastelView3, at: 9)
        pastelView3.center = CGPoint(x: thirdColorView.center.x, y: thirdColorView.center.y)
        
        
        
        
        //for 4 color view
        let pastelView4 = PastelView(frame: eighthColorView.bounds)
        
        // Custom Direction
        pastelView4.startPastelPoint = .bottomLeft
        pastelView4.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView4.animationDuration = 3.0
        
        // Custom Color
        pastelView4.setColors([
            UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1.0),
            UIColor(red: 0/255, green: 245/255, blue: 245/255, alpha: 0.5),
            UIColor(red: 0/255, green: 220/255, blue: 220/255, alpha: 0.2)])
        
        pastelView4.startAnimation()
        view.insertSubview(pastelView4, at: 9)
        pastelView4.center = CGPoint(x: fourthColorView.center.x, y: fourthColorView.center.y)
        
        
        
        //for 5 color view
        let pastelView5 = PastelView(frame: eighthColorView.bounds)
        
        // Custom Direction
        pastelView5.startPastelPoint = .bottomLeft
        pastelView5.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView5.animationDuration = 3.0
        
        // Custom Color
        pastelView5.setColors([
            UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0),
            UIColor(red: 245/255, green: 0/255, blue: 0/255, alpha: 0.5),
            UIColor(red: 220/255, green: 0/255, blue: 0/255, alpha: 0.2)])
        
        pastelView5.startAnimation()
        view.insertSubview(pastelView5, at: 9)
        pastelView5.center = CGPoint(x: fifthColorView.center.x, y: fifthColorView.center.y)
        
        
        
        //for 6 color view
        let pastelView6 = PastelView(frame: eighthColorView.bounds)
        
        // Custom Direction
        pastelView6.startPastelPoint = .bottomLeft
        pastelView6.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView6.animationDuration = 3.0
        
        // Custom Color
        pastelView6.setColors([
            UIColor(red: 255/255, green: 130/255, blue: 130/255, alpha: 1.0),
            UIColor(red: 245/255, green: 130/255, blue: 130/255, alpha: 0.5),
            UIColor(red: 220/255, green: 145/255, blue: 125/255, alpha: 0.2)])
        
        pastelView6.startAnimation()
        view.insertSubview(pastelView6, at: 9)
        pastelView6.center = CGPoint(x: sixthColorView.center.x, y: sixthColorView.center.y)
        
        
        
        
        //for 7 color view
        let pastelView7 = PastelView(frame: seventhColorView.bounds)
        
        // Custom Direction
        pastelView7.startPastelPoint = .bottomLeft
        pastelView7.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView7.animationDuration = 3.0
        
        // Custom Color
        pastelView7.setColors([
            UIColor(red: 250/255, green: 245/255, blue: 0.0, alpha: 1.0),
            UIColor(red: 200/255, green: 255/255, blue: 0.0, alpha: 0.5),
            UIColor(red: 220/255, green: 255/255, blue: 0.0, alpha: 0.2)])
        
        pastelView7.startAnimation()
        view.insertSubview(pastelView7, at: 9)
        seventhColorView.insertSubview(pastelView7, at: 9)
        

        
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
            UIColor(red: 200/255, green: 120/255, blue: 127/255, alpha: 0.5),
            UIColor(red: 180/255, green: 255/255, blue: 217/255, alpha: 0.2)])
        
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
                              UIColor(red: 230/255, green: 0.5, blue: 0.0, alpha: 1.0),
                              UIColor(red: 240/255, green: 0.5, blue: 0.0, alpha: 1.0),
                              UIColor(red: 220/255, green: 0.0, blue: 0.0, alpha: 1.0)])
        
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

