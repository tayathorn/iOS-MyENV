//
//  ViewController.swift
//  MyEnv
//
//  Created by tayathorn on 31/5/2562 BE.
//  Copyright © 2562 tayathorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myEndpoint = Bundle.main.infoDictionary!["API_ENDPOINT"] as! String
        print(myEndpoint)
    }


}

