//
//  ViewController.swift
//  GenerativeArtPlayground
//
//  Created by 孙千航 on 11/8/17.
//  Copyright © 2017 IOS_programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
   
    var lastPoint = CGPoint.zero
    var swiped = false
    var red:CGFloat = 0.0
    var green:CGFloat = 0.0
    var blue: CGFloat = 0.0
    
    var isDrawing = false
    @IBAction func showShape(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle:
            nil).instantiateViewController(withIdentifier: "ShapePopUp") as! ShapeViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }
    @IBAction func showNavigation(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle:
            nil).instantiateViewController(withIdentifier: "NavigationPopUp") as! NavigationViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @IBAction func showLine(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle:
            nil).instantiateViewController(withIdentifier: "LinePopUp") as! LineViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    
    @IBAction func showColor(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle:
            nil).instantiateViewController(withIdentifier: "ColorPopUp") as! ColorViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    ////////////////////////////////////////////////////////
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        if let touch = touches.first{
            lastPoint = touch.location(in: self.view)
            
        }
    }
    func drawLines(fromPoint: CGPoint, toPoint: CGPoint){
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        imageView.image?.draw(in: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        let context = UIGraphicsGetCurrentContext()
        
        context?.move(to:CGPoint(x: fromPoint.x, y: fromPoint.y))
        context?.addLine(to:CGPoint(x: toPoint.x, y: toPoint.y))
        context?.setBlendMode(CGBlendMode.normal)
        context?.setLineWidth(5.0)
        if let red = UserDefaults.standard.object(forKey: "red") ,
            let green = UserDefaults.standard.object(forKey: "green") ,
            let blue = UserDefaults.standard.object(forKey: "blue") {
            
            
            context?.setStrokeColor(UIColor(red: red as! CGFloat, green: green as! CGFloat, blue: blue as! CGFloat, alpha: 1.0).cgColor)
            
        }else{
            context?.setStrokeColor(UIColor(red: 0.0, green:0.0, blue: 0.0, alpha: 1.0).cgColor)
        }
        context?.strokePath()
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = true
        if let touch = touches.first{
            let currentPoint = touch.location(in: self.view)
            
            drawLines(fromPoint: lastPoint, toPoint: currentPoint)
            lastPoint = currentPoint
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped{
            drawLines(fromPoint: lastPoint, toPoint: lastPoint)
        }
    }
    @IBAction func reset(_ sender: Any) {
        
        self.imageView.image = nil
        UserDefaults.standard.set(0.0, forKey: "red")
        UserDefaults.standard.set(0.0, forKey: "green")
        UserDefaults.standard.set(0.0, forKey: "blue")
        
    }
    
    @IBAction func save(_ sender: Any) {
        if let image = imageView.image{
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        }
    }
    
   
    
    @IBAction func eraseDrawing(_ sender: Any) {
        
        UserDefaults.standard.set(1.0, forKey: "red")
        UserDefaults.standard.set(1.0, forKey: "green")
        UserDefaults.standard.set(1.0, forKey: "blue")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
