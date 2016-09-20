//
//  ViewController.swift
//  aBasicFMDB
//
//  Created by qianfeng on 16/9/20.
//  Copyright © 2016年 马锦龙. All rights reserved.
//
// FMDB 是一套三方库，作用是操作数据库
// CoreeData 是一套苹果自带的框架，作用也是操作数据库
// 了解:  1. 服务器中常用数据库 SQLServer、MySQL
//          2. 移动端常用的数据库，为SQLite3
//          3. FMDB 和CoreData 都是在间接操作SQLite3
// 数据库的操作：创建数据库；创建表格；插入数据；查询数据；修改数据

import UIKit

class ViewController: UIViewController {

    var db: FMDatabase?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // 创建数据库
    @IBAction func createDBBtn(sender: AnyObject) {
        
        // 获得沙盒目录路径
        let path = NSHomeDirectory().stringByAppendingString("/Documents/abc.db")
        // 实例化FMDB 对象
        db = FMDatabase.init(path: path)
        // 创建数据库 或打开数据库
        let createoropen = db?.open()
        print(path)
        print("create:", createoropen)
    }
    
    // 创建数据库中的表格
    @IBAction func createTBBtn(sender: AnyObject) {
        
        // 在数据库中建立表格，表格用于存储数据
        // 创建表格的SQL 语句  primary key 主键(防止数据重复)
        let tbSQL = "create table if not exists users (id integer primary key autoincrement, name varchar(255), age integer)"
        let tb = db?.executeUpdate(tbSQL, withArgumentsInArray: nil)
        print("tb: \(tb)")
    }

    // 插入数据
    @IBAction func inserRowBtn(sender: AnyObject) {
        
        // 插入数据的SQL 语句 
        let insertSQL = "insert into users (name, age) values (?, ?)"
        let insert = db?.executeUpdate(insertSQL, withArgumentsInArray: ["张三", 20])
        print("indeset: ", insert)
    }
    
    // 删除数据
    @IBAction func deleteRowBtn(sender: AnyObject) {
        
        // 删除的SQL 语句
        let deletSQL = "delete from users where id = ?"
        let delete = db?.executeUpdate(deletSQL, withArgumentsInArray: [1])
        print("delete: \(delete)")
    }
    
    // 修改数据
    @IBAction func updataRowBtn(sender: AnyObject) {
        
        // 修改的SQL 语句
        let updateSQL = "update users set name = ?, age = ? where id = ?"
        let updete = db?.executeUpdate(updateSQL, withArgumentsInArray: ["小李", 18, 2])
        print("update: \(updete)")
    }
    
    // 查询数据
    @IBAction func selectRowBtn(sender: AnyObject) {
        
        // 查询SQL 语句
        let selectSQL = "select * from users"
        let result = db?.executeQuery(selectSQL, withArgumentsInArray: nil)
        // 遍历result
        while result!.next() {
            let name = result?.stringForColumn("name")
            let age = result?.intForColumn("age")
            print("name: \(name), age: \(age)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}