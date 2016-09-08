//
//  secondViewController.swift
//  闭包传值
//
//  Created by qianfeng on 16/9/8.
//  Copyright © 2016年 葫芦小金刚. All rights reserved.
//

import UIKit

// 第一步: 为闭包类型改名
typealias sendValueClisure = (string: String) -> Void
class secondViewController: UIViewController {

    // 第二步: 声明一个闭包
    var myClosure: sendValueClisure?
    func initWiehClosure(closure: sendValueClisure?) {
        myClosure = closure
    }
    
    @IBOutlet weak var TF: UITextField!
    @IBAction func btnClick(sender: AnyObject) {
        
        // 判断闭包是否为空
        if (myClosure != nil) {
            // 第五步: 进行回调： 闭包隐式调用someFunctionThatTakesAClosure函数
            myClosure!(string: TF.text!)
            print("成功")
        }
    }
    
    @IBAction func backClick(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
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
