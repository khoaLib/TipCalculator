//
//  ViewController.swift
//  tip
//
//  Created by DANG KHOA on 8/18/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    @IBOutlet weak var billAmountTextField: UITextField!
//
//    @IBOutlet weak var tipPercentageLabel: UILabel!
//    @IBOutlet weak var tipControl: UISegmentedControl!
//
//
//    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmounttextField: UITextField!
    @IBOutlet weak var TipAmountSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmounttextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[TipAmountSegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totallabel.text = String(format: "$%.2f", total)
        
    }
    //    @IBAction func onTap(_ sender: Any) {
//    }
//
//    @IBAction func calculateTip(_ sender: Any) {
//        let bill = Double(billAmountTextField.text!) ?? 0
//        let tipPercentages = [0.15,0.18,0.2]
//
//        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
//        let total = bill + tip
//        tipPercentageLabel.text = String(format: "$%.2f", tip)
//        totalLabel.text = String(format: "$%2f", total)
//    }
    
}
