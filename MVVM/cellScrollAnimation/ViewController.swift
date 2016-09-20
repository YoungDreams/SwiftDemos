//
//  ViewController.swift
//  cellScrollAnimation
//
//  Created by qianfeng on 16/9/16.
//  Copyright © 2016年 马锦龙. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    deinit {
        print("viewController relese")
    }

    @IBOutlet weak var barItem: TestBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barItem.vController = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

