//
//  QSSecondTableViewCell.swift
//  WLBaseCellDemo
//
//  Created by ZhaoChen on 2018/4/5.
//  Copyright © 2018年 WaLan. All rights reserved.
//

import UIKit

class QSSecondTableViewCell: QSBaseTableViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.backgroundColor = UIColor.red
    }
    
}
