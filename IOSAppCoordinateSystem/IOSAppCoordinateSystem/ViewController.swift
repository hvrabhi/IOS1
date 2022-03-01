//
//  ViewController.swift
//  IOSAppCoordinateSystem
//
//  Created by Malipatlola,Abhilash Reddy on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minX = ImageViewOutlet.frame.minX
        let minY = ImageViewOutlet.frame.minY
        print("{\(minX), \(minY)}")
        
        let maxX = ImageViewOutlet.frame.maxX
        let maxY = ImageViewOutlet.frame.maxY
        print("{\(maxX), \(maxY)}")
        
        let midX = ImageViewOutlet.frame.midX
        let midY = ImageViewOutlet.frame.midY
        print("{\(midX), \(midY)}")
        
        
        //move the location of the image to the upper left corner. (0,0)
        ImageViewOutlet.frame.origin.x = 0
        ImageViewOutlet.frame.origin.y = 0
        
        
        //move the location of the image to the upper right corner.
        ImageViewOutlet.frame.origin.x = 312
        ImageViewOutlet.frame.origin.y = 0
        
        //move the location of the image to the lower left corner.
        ImageViewOutlet.frame.origin.x = 0
        ImageViewOutlet.frame.origin.y = 796
        
        //move the location of the image to the upper right corner.
        ImageViewOutlet.frame.origin.x = 314
        ImageViewOutlet.frame.origin.y = 796
        
        //move the location of the image to the centre.
        ImageViewOutlet.frame.origin.x = 157
        ImageViewOutlet.frame.origin.y = 398
        
    }


}

