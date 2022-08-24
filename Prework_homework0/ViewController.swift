//
//  ViewController.swift
//  Prework_homework0
//
//  Created by user204225 on 8/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TipCalculator(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        //Get total tip by multiplying tip * tipPecentage
        let tipPecentages = [0.15,0.18,0.2]
        let tip = bill * tipPecentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip amount label
        tipAmountLabel.text = String(format:"$%.2f",tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

