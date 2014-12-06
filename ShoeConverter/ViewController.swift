//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Rodney Hess on 12/6/14.
//  Copyright (c) 2014 hess. All rights reserved.
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
        
//        var sizeFromTextField = mensShoeSizeTextField.text
//        var numberFromTextField = sizeFromTextField.toInt()
//        var integerFromTextField = numberFromTextField!
        
        var sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        
//        integerFromTextField += conversionConstant

        mensConvertedShoeSizeLabel.hidden = false
//        
//        var stringWithUpdatedShoeSize = "\(integerFromTextField)"
//        
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize

        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        
        
    }

    @IBAction func convertWomenShoeSizeButtonPressed(sender: UIButton) {
        
        let conversionConstant = 30.5
        var sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        womensConvertedShoeSizeLabel.hidden = false
        
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoe size"
        
        
    }
}

