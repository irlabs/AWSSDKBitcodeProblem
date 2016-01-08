//
//  ViewController.swift
//  BitcodeBugExample
//
//  Created by Dirk van Oosterbosch on 08/01/16.
//  Copyright © 2016 Dirk van Oosterbosch. All rights reserved.
//

import UIKit
import AWSCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let provider = AWSAnonymousCredentialsProvider()
        print(provider)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

