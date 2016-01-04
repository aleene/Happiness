//
//  HappinessViewController.swift
//  Happiness
//
//  Created by arnaud on 03/01/16.
//  Copyright © 2016 Hovering Above. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource {

    @IBOutlet weak var faceView: FacView! {
        didSet {
            // tell the FaceView that HapinessViewController will be its datasource
            faceView.dataSource = self
        }
    }
    
    var happiness: Int = 10 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)") //note that println() has changed to print() in Swift 2.1
            updateUI()
        }
    }
   
    func updateUI() {
        // instruct faceView to redraw itself
        faceView.setNeedsDisplay()
    }
    
    func smilinesForFaceView(sender: FacView) -> Double? {
        // interpret model for the view
        return Double(happiness-50)/50
    }
}
