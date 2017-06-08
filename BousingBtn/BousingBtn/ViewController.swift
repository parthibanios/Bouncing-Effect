//
//  ViewController.swift
//  BousingBtn
//
//  Created by ev_mac18 on 04/05/17.
//  Copyright © 2017 ev_mac18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var halo:PulsingHaloLayer!
    @IBOutlet var workoutBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       workoutBtn.layer.cornerRadius = workoutBtn.frame.size.height/2
        workoutBtn.layer.borderWidth = 4 //2
        workoutBtn.layer.borderColor = UIColor.red.cgColor
        halo = PulsingHaloLayer()
        workoutBtn.superview?.layer.insertSublayer(halo, below: workoutBtn.layer)
        halo.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        self.halo.position = CGPoint(x: (workoutBtn.frame.or).float, y: workoutBtn.frame.size.y)//CGPoint(x: workoutBtn.frame.size.x, y: workoutBtn.frame.size.y)
    }

}

extension UIColor {
    
    class func fromRGB(rgb:UInt32) -> UIColor {
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    class func fromRGB_Alpha(rgb:UInt32,alpha:Float) -> UIColor {
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
}
}



