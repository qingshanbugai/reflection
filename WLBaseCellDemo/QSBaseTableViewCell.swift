//
//  QSBaseTableViewCell.swift
//  WLBaseCellDemo
//
//  Created by ZhaoChen on 2018/4/5.
//  Copyright © 2018年 WaLan. All rights reserved.
//

import UIKit

class QSBaseTableViewCell: UITableViewCell {
    
    //得到重用标识符
    static func getIdentifier() -> String {
        let identifier = NSStringFromClass(self)
        return identifier
    }

    //如果想用元类型初始化，必须要用required标记初始化方法
    required override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

