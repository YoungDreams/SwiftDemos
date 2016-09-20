//
//  TestBarItem.swift
//  cellScrollAnimation
//
//  Created by qianfeng on 16/9/16.
//  Copyright © 2016年 马锦龙. All rights reserved.
//

import UIKit

class TestBarItem: UIBarButtonItem {

    var testBtnViewModel = TestBarButtonItem()
    weak var vController: ViewController!

    // 重写重载方法
    override func awakeFromNib() {
        testBtnViewModel.targat = self
        self.target = testBtnViewModel
        self.action = #selector(testBtnViewModel.testAction)
    }
}
