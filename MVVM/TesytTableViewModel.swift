//
//  TesytTableViewModel.swift
//  cellScrollAnimation
//
//  Created by qianfeng on 16/9/16.
//  Copyright © 2016年 马锦龙. All rights reserved.
//

import UIKit

class TesytTableViewModel: NSObject, UITableViewDataSource, UITableViewDelegate {

    var testTableView: TestTableView!
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        for cell in self.testTableView.visibleCells {
            
            // UIView
            let bottomView = cell.contentView.viewWithTag(2000)
            // UIImageView
            let image = bottomView?.viewWithTag(2001)
            
            // 相对于屏幕高度
            let rect = bottomView?.convertRect((bottomView?.bounds)!, toView: nil)
            // 滚动中改变y 的位置
            var Y = UIScreen.mainScreen().bounds.height - (rect?.origin.y)! - 600
            Y *= 0.2
            if Y > 0 {
                Y = 0
            }
            if Y < -100 {
                Y = -100
            }
            image?.frame.origin.y = Y
        }
        
        return cell
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        // 获取当前页面显示的cell 返回数组
        for cell in self.testTableView.visibleCells {
            let bottomView = cell.contentView.viewWithTag(2000)
            let image = bottomView?.viewWithTag(2001)
            
            // 相对于屏幕高度
            let rect = bottomView?.convertRect((bottomView?.bounds)!, toView: nil)
            // 滚动中改变y 的位置
            var Y = UIScreen.mainScreen().bounds.height - (rect?.origin.y)! - 600
            Y *= 0.2
            if Y > 0 {
                Y = 0
            }
            if Y < -100 {
                Y = -100
            }
            image?.frame.origin.y = Y
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 300
    }
    
}
