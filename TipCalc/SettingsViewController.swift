//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Audrey Chaing on 8/22/16.
//  Copyright © 2016 Audrey Chaing. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("settings view will appear")
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultValue = defaults.doubleForKey("default_tip")
        let defaultSelection = defaults.integerForKey("default_tip_selection")
        print(defaultValue)
        print(defaultSelection)
        defaultSelector.selectedSegmentIndex = defaultSelection
    }
    
    @IBOutlet weak var defaultSelector: UISegmentedControl!
    

    @IBAction func changeDefault(sender: AnyObject) {
        
        let tipPercentagesDefault = [0.15, 0.18, 0.2]
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(tipPercentagesDefault[defaultSelector.selectedSegmentIndex], forKey: "default_tip")
        defaults.setInteger(defaultSelector.selectedSegmentIndex, forKey: "default_tip_selection")
        defaults.synchronize()
        
        print (tipPercentagesDefault[defaultSelector.selectedSegmentIndex])
        print(defaultSelector.selectedSegmentIndex)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
