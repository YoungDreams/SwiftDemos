//
//  ViewController.swift
//  headViewBiger
//
//  Created by qianfeng on 16/9/28.
//  Copyright © 2016年 马锦龙. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var img: UIImageView!
    var rect1: CGRect?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(img.frame.origin.x, img.frame.origin.y, img.frame.size.width, img.frame.size.height)
        // 记录imageView 的原始frame
        rect1 = img.frame
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        let contentOfSet = scrollView.contentOffset.y
        
       
        if contentOfSet < 0 {
            
            img.frame = rect1!
            var rect = img.frame
            rect.size.height = img.frame.height - contentOfSet
            rect.size.width = img.frame.width * (img.frame.height - contentOfSet) / img.frame.height
            rect.origin.x = -(rect.size.width - img.frame.width) / 2
            rect.origin.y = 0
            img.frame = rect
            print(img.frame.origin.x, img.frame.origin.y, img.frame.size.width, img.frame.size.height)
        } else {
            img.frame = rect1!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

