//
//  TestBarButtonItem.swift
//  cellScrollAnimation
//
//  Created by qianfeng on 16/9/16.
//  Copyright © 2016年 马锦龙. All rights reserved.
//

import UIKit

class TestBarButtonItem: NSObject {

    weak var targat: TestBarItem!
    func testAction() -> Void {
        print("btnClick")
//        let svc = SecondViewController()
//        targat.vController.navigationController?.pushViewController(svc, animated: true)
        
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let svc = sb.instantiateViewControllerWithIdentifier("test")
        targat.vController.navigationController?.pushViewController(svc, animated: true)
    }
}
