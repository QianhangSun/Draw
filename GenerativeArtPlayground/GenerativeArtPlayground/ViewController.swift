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
   
    @IBOutlet weak  var shapeButton: UIButton!
    
    var lastPoint = CGPoint.zero
    var swiped = false
    
    var isDrawing = false
    var imageStack : [UIImage] = [UIImage]()
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
        generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.generatingPatterns(fromPoint: fromPoint, toPoint: toPoint)
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
        imageStack.append(self.imageView.image!)
    }
    
    
    @IBAction func reset(_ sender: Any) {
        
        self.imageView.image = nil
        generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(redColorFunc: 1.0, greenColorFunc: 1.0, blueColorFunc: 1.0)
        
    }
    
    @IBAction func goBack(_ sender: Any) {
        imageStack.popLast()
        self.imageView.image = imageStack.last
        
    }
    @IBAction func save(_ sender: Any) {
        if let image = imageView.image{
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        }
    }
    
   
    
    @IBAction func eraseDrawing(_ sender: Any) {
        
        generatingAlogrithm.sharedInstanceOfGeneratingAlgorithm.colorChange(
            redColorFunc: 0.0, greenColorFunc: 0.0, blueColorFunc: 0.0
        )
        
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
