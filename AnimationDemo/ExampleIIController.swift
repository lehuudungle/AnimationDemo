//
//  ExampleIIController.swift
//  AnimationDemo
//
//  Created by le.huu.dung on 6/20/19.
//  Copyright © 2019 le.huu.dung. All rights reserved.
//

import UIKit

class ExampleIIController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startAnimation(_ sender: Any) {
        UIView.animateKeyframes(withDuration: 10.0,
                                delay: 0,
                                options: [] ,
                                animations: {
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.0,
                                                       relativeDuration: 0.125,
                                                       animations: {
                                                        
                                                        self.animationView.frame.size.width -= 80
                                                        self.animationView.frame.size.height -= 80
                                                        self.animationView.center.x -= 60
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.125,
                                                       relativeDuration: 0.25,
                                                       animations: {
                                                        
                                                        self.animationView.center.y -= 120
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.375,
                                                       relativeDuration: 0.25,
                                                       animations: {
                                                        
                                                        self.animationView.center.x += 200
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.625,
                                                       relativeDuration: 0.25,
                                                       animations: {
                                                        
                                                        self.animationView.center.y += 370
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.875,
                                                       relativeDuration: 0.125,
                                                       animations: {
                                                        
                                                        self.animationView.center.x -= 140
                                                        self.animationView.center.y -= 250
                                                        self.animationView.frame.size.width += 80
                                                        self.animationView.frame.size.height += 80
                                    })
                                    
        },
                                completion: nil)
    }
    
   
}
