//
//  ViewController.swift
//  DataTransfer
//
//  Created by Nilesh Uttekar on 27/09/16.
//  Copyright © 2016 Nilesh Uttekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNextClicked(sender: UIButton) {
        self.performSegueWithIdentifier("pushIdentifier", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondViewObj =  segue.destinationViewController as! SecondViewController;
        let userdata = UserData();
        userdata.userId = "001"
        userdata.userName = "Nilesh";
        secondViewObj.userInfo = userdata;
        
    }
}

