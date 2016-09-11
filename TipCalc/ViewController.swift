//
//  ViewController.swift
//  TipCalc
//
//  Created by audsinthecity on 8/22/16.
//  Copyright © 2016 audsinthecity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var startView: UIView!
    
    
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animateWithDuration(0.8, animations: {
            // Starter view fade out
            self.startView.alpha = 0
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //print("view will appear")
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultValue = defaults.doubleForKey("default_tip")
        let defaultSelection = defaults.integerForKey("default_tip_selection")
        let themeSelection = defaults.integerForKey("default_theme_selection")
        //print(defaultValue)
        //print(defaultSelection)
        //print(themeSelection)
        tipControl.selectedSegmentIndex = defaultSelection
        calculateTip(self)
        if themeSelection == 0 {
            self.view.backgroundColor = UIColor.init(red: 0.67, green: 0.97, blue: 0.80, alpha: 0.9)
        } else {
            self.view.backgroundColor = UIColor.init(red: 0.85, green: 0.75, blue: 0.85, alpha: 0.9)
        }
        billField.center.x -= view.bounds.width
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.5, animations: {
            self.billField.center.x += self.view.bounds.width
        })
        //formatView.layer.zPosition = 0
        self.billField.becomeFirstResponder()
        //print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        //print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        //print("view did disappear")
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let twoSplit = total/2
        let threeSplit = total/3
        let fourSplit = total/4
        
        twoLabel.text = String(format: "$%.2f", twoSplit)
        threeLabel.text = String(format: "$%.2f", threeSplit)
        fourLabel.text = String(format: "$%.2f", fourSplit)
    }

    
}

