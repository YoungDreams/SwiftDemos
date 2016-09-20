//
//  RootViewController.swift
//  闭包传值
//
//  Created by qianfeng on 16/9/8.
//  Copyright © 2016年 葫芦小金刚. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var LB: UILabel!
    @IBAction func btn(sender: AnyObject) {
        
        // 第四步: 调用第二个页面 传这个页面的函数方法，让第二个页面的闭包拿到这个函数的指针 之后进行回调
        let secondView = secondViewController()
        secondView.initWiehClosure(someFunctionThatTakesAClosure)
        self.presentViewController(secondView, animated: true) { 
            
        }
    }
    
    // 第三步: 在接收页面创建与闭包类型相同的函数
    func someFunctionThatTakesAClosure(string: String) -> Void {
        LB.text = string
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
