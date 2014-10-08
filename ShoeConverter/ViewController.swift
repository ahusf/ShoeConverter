//
//  ViewController.swift
//  ShoeConverter
//
//  Created by ahu on 10/4/14.
//  Copyright (c) 2014 Grand Thunder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let conversionConstant = 30
        
        let mensShoeSize = mensShoeSizeTextField.text.toInt()
        
        if mensShoeSize != nil {
            mensConvertedShoeSizeLabel.text = "European Size: \(mensShoeSize! + conversionConstant) "
            
            mensConvertedShoeSizeLabel.hidden = false
            
            mensShoeSizeTextField.text = ""
        }
    
    }

    @IBAction func womenConversionButtonPresses(sender: UIButton) {
        let conversionConstant = 30.5
        
        let womensShoeSize = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        womensConvertedShoeSizeLabel.text = "European Size: \(womensShoeSize + conversionConstant)"
        womensConvertedShoeSizeLabel.hidden = false
        
        womensShoeSizeTextField.text = ""
    }
}

