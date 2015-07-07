//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Yasoob  Rasheed on 6/30/15.
//  Copyright © 2015 Yasoob Rasheed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountOfTip: UILabel!
    @IBOutlet weak var totalBill: UILabel!
    @IBOutlet weak var calculateAnswer: UITextField!
    @IBOutlet weak var numberOfSplits: UILabel!
    @IBOutlet weak var splitTip: UILabel!
    @IBOutlet weak var splitBill: UILabel!
    
    var input: Double = 0
    var billLabel : Double = 0
    var tipLabel : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func validateEntry(entry: String!) -> Double {
        if let value = Double(entry) {
            return value
        } else {
            return 0
        }
    }
    
    func validateIntEntry(entry: String!) -> Int {
        if let value = Int(entry) {
            return value
        } else {
            return 0
        }
    }
    
    @IBAction func tenButtonPushed(sender: UIButton) {
        input = validateEntry(calculateAnswer.text!)
        var number = 0.1
        number = input * number
        amountOfTip.text = String(number)
        tipLabel = number
        amountOfTip.text = String(format: "Tip: $%.2f", tipLabel)
        totalBill.text = String(number+input)
        billLabel = number + input
        totalBill.text = String(format: "Total Bill: $%.2f", billLabel)
        self.view.endEditing(true)
    }
    
    @IBAction func fifteenButtonPushed(sender: UIButton) {
        input = validateEntry(calculateAnswer.text!)
        var number = 0.15
        number = input * number
        amountOfTip.text = String(number)
        tipLabel = number
        amountOfTip.text = String(format: "Tip: $%.2f", tipLabel)
        totalBill.text = String(number+input)
        billLabel = number + input
        totalBill.text = String(format: "Total Bill: $%.2f", billLabel)
        self.view.endEditing(true)
    }
    
    @IBAction func twentyButtonPushed(sender: UIButton) {
        input = validateEntry(calculateAnswer.text!)
        var number = 0.20
        number = input * number
        amountOfTip.text = String(number)
        tipLabel = number
        amountOfTip.text = String(format: "Tip: $%.2f", tipLabel)
        totalBill.text = String(number+input)
        billLabel = number + input
        totalBill.text = String(format: "Total Bill: $%.2f", billLabel)
        self.view.endEditing(true)
    }
    
    @IBAction func twentyFiveButtonPushed(sender: UIButton) {
        input = validateEntry(calculateAnswer.text!)
        var number = 0.25
        number = input * number
        amountOfTip.text = String(number)
        tipLabel = number
        amountOfTip.text = String(format: "Tip: $%.2f", tipLabel)
        totalBill.text = String(number+input)
        billLabel = number + input
        totalBill.text = String(format: "Total Bill: $%.2f", billLabel)
        self.view.endEditing(true)
    }
    
    @IBAction func lessPeopleButtonPushed(sender: UIButton) {
        let input = validateIntEntry(numberOfSplits.text!)
        
        if input != 1 {
            let number = input - 1
            numberOfSplits.text = String(number)
            let bill = billLabel
            let tip = tipLabel
            splitBill.text = String(format: "Bill split \(number) ways: $%.2f", bill/Double(number))
            splitTip.text = String(format: "Tip split \(number) ways: $%.2f", tip/Double(number))
        }
    }
    
    @IBAction func morePeopleButtonPushed(sender: UIButton) {
        let input = validateIntEntry(numberOfSplits.text!)
        
        if input != 20 {
            let number = input + 1
            numberOfSplits.text = String(number)
            let bill = billLabel
            let tip = tipLabel
            splitBill.text = String(format: "Bill split \(number) ways: $%.2f", bill/Double(number))
            splitTip.text = String(format: "Tip split \(number) ways: $%.2f", tip/Double(number))
        }
    }
}






    
    
    

