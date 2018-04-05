//
//  ViewController.swift
//  WLBaseCellDemo
//
//  Created by ZhaoChen on 2018/4/5.
//  Copyright © 2018年 WaLan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dataArr = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = 80
        self.tableView.estimatedRowHeight = 0
        self.tableView.estimatedSectionFooterHeight = 10
        self.tableView.estimatedSectionHeaderHeight = 0
   
        //构造数据源
        for i in 1...50 {
            
            let bound = UInt32(i)
            let temp = Int(arc4random_uniform(bound))
            if temp % 2 == 0{
                self.dataArr.append(QSSecondTableViewCell.getIdentifier())
            }else{
                self.dataArr.append(QSFirstTableViewCell.getIdentifier())
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellStr = self.dataArr[indexPath.row]
        let celltype = NSClassFromString(cellStr) as! QSBaseTableViewCell.Type
    
        var cell = tableView.dequeueReusableCell(withIdentifier: cellStr)
        
        if cell == nil {
            cell = celltype.init(style: .default, reuseIdentifier: cellStr)
        }
        
        return cell!
    }
}
