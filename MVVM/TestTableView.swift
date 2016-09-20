//
//  TestTableView.swift
//  cellScrollAnimation
//
//  Created by qianfeng on 16/9/16.
//  Copyright © 2016年 马锦龙. All rights reserved.
//

import UIKit

class TestTableView: UITableView {

    var testTableViewModel = TesytTableViewModel()

    override func awakeFromNib() {
        self.tableFooterView = UIView()
        self.estimatedRowHeight = 60
        self.rowHeight = UITableViewAutomaticDimension
        self.separatorInset = UIEdgeInsetsZero
        testTableViewModel.testTableView = self
        self.delegate = testTableViewModel
        self.dataSource = testTableViewModel
    }
}
