//
//  ViewController.swift
//  SnapKit_UITableView
//
//  Created by 李永杰 on 2021/4/14.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let titles = ["詹姆斯詹姆斯詹姆斯詹姆斯詹姆斯詹姆斯詹姆斯", "杜兰特杜兰特杜兰特杜兰特杜兰特杜兰特杜兰特杜兰特杜兰特杜兰特杜兰特杜兰特", "伦纳德伦纳德伦纳德伦纳德伦纳德伦纳德伦纳德伦纳德", "欧文欧文欧文欧文欧文欧文", "zionzionzionzionzionzionzionzionzionzionzionzionzionzion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        tableView.snp.remakeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.separatorColor = .systemRed
        table.dataSource = self
        table.delegate = self
        table.estimatedRowHeight = 50
        table.rowHeight = UITableView.automaticDimension
        table.register(DemoCell.self, forCellReuseIdentifier: "DemoCell")
        table.backgroundColor = .clear
        return table
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let title = titles[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoCell", for: indexPath) as! DemoCell
        cell.title = title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("第\(indexPath.row)行被点击了")
    }
}
