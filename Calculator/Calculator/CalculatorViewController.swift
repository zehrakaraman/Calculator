//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Zehra on 27.07.2022.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var calculatorWorkings: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        clearAll()
        
    }
    
    @IBAction func clearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func divideTap(_ sender: Any) {
        addToWorkings(value: "/")
    }
    
    @IBAction func timesTap(_ sender: Any) {
        addToWorkings(value: "*")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorkings(value: "-")
    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    @IBAction func equalsTap(_ sender: Any) {
//        addToWorkings(value: "=")
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        
        let resultString = formatResult(result: result)
        calculatorResults.text = resultString
        
    }
    
    @IBAction func backTap(_ sender: Any) {
        
    }
    
    @IBAction func decimalTap(_ sender: Any) {
        addToWorkings(value: ".")
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorkings(value: "0.0")
    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorkings(value: "1.0")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorkings(value: "2.0")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToWorkings(value: "3.0")
    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorkings(value: "4.0")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorkings(value: "5.0")
    }
    
    @IBAction func sixTap(_ sender: Any) {
        addToWorkings(value: "6.0")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorkings(value: "7.0")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToWorkings(value: "8.0")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorkings(value: "9.0")
    }

}

extension CalculatorViewController {
    func clearAll() {
        workings = ""
        calculatorWorkings.text = ""
        calculatorResults.text = ""
    }
    
    func addToWorkings(value: String) {
        if newProcess() {
            clearAll()
        }
        
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
        
    }
    
    func newProcess() -> Bool {
        if calculatorResults.text != "" {
            return true
        } else {
            return false
        }
    }
}
