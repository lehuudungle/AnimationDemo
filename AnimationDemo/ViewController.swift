//
//  ViewController.swift
//  AnimationDemo
//
//  Created by le.huu.dung on 6/19/19.
//  Copyright © 2019 le.huu.dung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    var labelPositionisLeft = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func startAnimation(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0, initialSpringVelocity: 100, options: .curveEaseInOut, animations: {
            if self.labelPositionisLeft {
                self.Label.center.x = self.view.bounds.width - 100
            }
            else {
                self.Label.center.x = 100
            }
            self.labelPositionisLeft = !(self.labelPositionisLeft)
        }, completion: nil)
    }
    

}


