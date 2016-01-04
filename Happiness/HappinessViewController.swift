//
//  HappinessViewController.swift
//  Happiness
//
//  Created by arnaud on 03/01/16.
//  Copyright © 2016 Hovering Above. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController {

    var happiness: Int = 50 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)") //note that println() has changed to print() in Swift 2.1
            updateUI()
        }
    }
   
    func updateUI() {
    
    }
}
