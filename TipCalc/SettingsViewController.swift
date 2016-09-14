//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by audsinthecity on 8/22/16.
//  Copyright © 2016 audsinthecity. All rights reserved.
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
        self.view.backgroundColor = UIColor.init(red: 0.66, green: 0.95, blue: 0.96, alpha: 0.9)
        print("settings view will appear")
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultValue = defaults.doubleForKey("default_tip")
        let defaultSelection = defaults.integerForKey("default_tip_selection")
        let themeSelection = defaults.integerForKey("default_theme_selection")
        print(defaultValue)
        print(defaultSelection)
        print(themeSelection)
        defaultSelector.selectedSegmentIndex = defaultSelection
        themeSelector.selectedSegmentIndex = themeSelection
    }
    
    @IBOutlet weak var defaultSelector: UISegmentedControl!
    

    @IBOutlet weak var themeSelector: UISegmentedControl!
    
    
    @IBAction func changeTheme(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(themeSelector.selectedSegmentIndex, forKey: "default_theme_selection")
        defaults.synchronize()
        print(themeSelector.selectedSegmentIndex)
    }
    
    
    @IBAction func changeDefault(sender: AnyObject) {
        
        let tipPercentagesDefault = [0.15, 0.18, 0.2]
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(tipPercentagesDefault[defaultSelector.selectedSegmentIndex], forKey: "default_tip")
        defaults.setInteger(defaultSelector.selectedSegmentIndex, forKey: "default_tip_selection")
        defaults.synchronize()

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
