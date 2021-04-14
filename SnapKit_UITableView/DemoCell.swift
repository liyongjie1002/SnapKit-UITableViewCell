//
//  DemoCell.swift
//  SnapKit_UITableView
//
//  Created by 李永杰 on 2021/4/14.
//

import UIKit
 
class DemoCell: UITableViewCell {
    
    var title = "" {
        didSet {
            contentLabel.text = title
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configUI() {
        contentView.addSubview(contentLabel)
        // 撑开cell
        contentLabel.snp.makeConstraints { (make) in
            make.top.left.equalTo(10)
            make.right.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
    
    // 不要把布局放在layoutSubViews，会导致无法撑开cell
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        contentLabel.snp.makeConstraints { (make) in
//            make.top.left.equalTo(10)
//            make.right.equalTo(-10)
//            make.bottom.equalTo(-10)
//        }
//    }
     
    lazy var contentLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
}
