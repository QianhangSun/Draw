//
//  ViewController.swift
//  DrawingApp
//
//  Created by 孙千航 on 10/22/17.
//  Copyright © 2017 IOS_programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var lastPoint = CGPoint.zero
    var swiped = false
    
    var red:CGFloat = 0.0
    var green:CGFloat = 0.0
     var blue:CGFloat = 0.0
    var isDrawing = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        if let touch = touches.first{
            lastPoint = touch.location(in: self.view)
            print(lastPoint)
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
        context?.setStrokeColor(UIColor(red: red, green: green, blue: blue, alpha: 1.0).cgColor)
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
            //drawLines(fromPoint: lastPoint, toPoint: lastPoint)
        }
    }
    @IBAction func reset(_ sender: Any) {
        
        self.imageView.image = nil
        
    }
  
    @IBAction func save(_ sender: Any) {
        if let image = imageView.image{
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        }
    }

 
    func test() {
        
    }
    
    
    @IBAction func eraseDrawing(_ sender: Any) {
        
        (red,green,blue) = (1,1,1)
        
    }
    @IBAction func colorChosen(_ sender: Any) {
       /* if (sender as AnyObject).tag == 0{
            (red,green,blue) = (1,0,0)
        }else if sender.tag ==1{
            
        }*/
        switch (sender as AnyObject).tag {
        case 1:
            (red,green,blue) = (1,0,0)
        case 2:
            (red,green,blue) = (0,0,0)
        case 3:
            (red,green,blue) = (1,1,0)
        case 4:
            (red,green,blue) = (0,1,0)
        case 5:
            (red,green,blue) = (0,0,1)
        default:
            break
            
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

