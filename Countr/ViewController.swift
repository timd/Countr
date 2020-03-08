//
//  ViewController.swift
//  Countr
//
//  Created by Tim on 08.03.20.
//  Copyright © 2020 duckett.de. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var rowCounter: UILabel!
    @IBOutlet var stitchCounter: UILabel!
    
    var rowCount = 0
    var stitchCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        updateLabels()
        
    }
    
    func updateLabels() {
        rowCounter.text = "\(rowCount)"
        stitchCounter.text = "\(stitchCount)"
    }

}

extension ViewController {
    
    @IBAction func didTapRowButton(sender: UIButton) {
        switch sender.tag {
        case 1000:
            rowCount += 1
        case 2000:
            if rowCount > 0 {
              rowCount -= 1
            }
        default:
            return
        }
    
        updateLabels()
        
    }
    
    @IBAction func didTapStitchButton(sender: UIButton) {
        switch sender.tag {
        case 1000:
            stitchCount += 1
        case 2000:
            if stitchCount > 0 {
              stitchCount -= 1
            }
        default:
            return
        }
        
        updateLabels()
        
    }
    
    @IBAction func didTapResetButton(sender: UIButton) {
        switch sender.tag {
        case 1000:
            rowCount = 0
        case 2000:
            stitchCount = 0
        default:
            return
        }
        
        updateLabels()
        
    }
    
}


