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
    
    //variable to track whether cache should be cleared after 10 minutes, default to clear cache
    var resetCache = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animateWithDuration(0.8, animations: {
            // Starter view fade out
            self.startView.alpha = 0
        })
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let endTime = defaults.objectForKey("endTime")
        print("end time \(endTime)")
        
        //calculate interval time to clear cache or not
        let dateEndTime = endTime as! NSDate
        //print("end time as date \(dateEndTime)")
        
        let startTime = NSDate()
        print("start time \(startTime)")
        
        let interval = startTime.timeIntervalSinceDate(dateEndTime)
        print ("interval: \(interval)")
        
        if interval < 600 {
            resetCache = false
        } else {
            print("clear cache")
        }
        
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
        let storedValue = defaults.doubleForKey("stored_value")
        let defaultSelection = defaults.integerForKey("default_tip_selection")
        let themeSelection = defaults.integerForKey("default_theme_selection")
        
        print("loading cached number: \(storedValue)")
        
        if resetCache == false {
            print("reset cache is false")
            billField.text = String(storedValue)
        }

        tipControl.selectedSegmentIndex = defaultSelection
        
        calculateTip(self)
        
        //change background according to theme
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
   
        self.billField.becomeFirstResponder()
        
        //print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        //print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        //set end time to calculate interval
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(NSDate(), forKey: "endTime")
        print("view did disappear")
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let currencyFormatter = NSNumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        // localize to your grouping and decimal separator
        currencyFormatter.locale = NSLocale.currentLocale()
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text = currencyFormatter.stringFromNumber(tip)
        //tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = currencyFormatter.stringFromNumber(total)
        //totalLabel.text = String(format: "$%.2f", total)
        
        let twoSplit = total/2
        let threeSplit = total/3
        let fourSplit = total/4
        
        twoLabel.text = currencyFormatter.stringFromNumber(twoSplit)
        threeLabel.text = currencyFormatter.stringFromNumber(threeSplit)
        fourLabel.text = currencyFormatter.stringFromNumber(fourSplit)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(bill, forKey: "stored_value")
        //print("saving cached number: \(storedValue)")
        
    }

    
}

