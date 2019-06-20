//
//  ExampleIIIController.swift
//  AnimationDemo
//
//  Created by le.huu.dung on 6/20/19.
//  Copyright © 2019 le.huu.dung. All rights reserved.
//

import UIKit

class ExampleIIIController: UIViewController {

    @IBOutlet weak var goldenView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    private var isFlipped: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func transition(_ sender: UIButton) {
        isFlipped = !isFlipped
        
        let cardToFlip = isFlipped ? goldenView : greenView
        let bottomCard = isFlipped ? greenView : goldenView
        
                UIView.transition(from: cardToFlip!,
                                  to: bottomCard!,
                                  duration: 0.5,
                                  options: [.transitionFlipFromLeft, .showHideTransitionViews],
                                  completion: nil)
        
        
    }

   

}
