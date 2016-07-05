//
//  ViewController.swift
//  LoginApp
//
//  Created by Prolins on 23/05/16.
//  Copyright © 2016 Prolins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "http://www.lcfc.com/images/common/bg_player_profile_default_big.png")!
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)){
            let data = NSData(contentsOfURL: url)
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.img.image = UIImage(data: data!)
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        let isLogged = NSUserDefaults.standardUserDefaults().boolForKey("IsLogged")
        if(!isLogged){
            self.performSegueWithIdentifier("LoginView", sender: nil)
        }
    }

    @IBAction func logout(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "IsLogged")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        self.performSegueWithIdentifier("LoginView", sender: nil)
    }
    
    

}

