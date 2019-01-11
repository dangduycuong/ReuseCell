//
//  ViewController.swift
//  ReuseCell0
//
//  Created by duycuong on 1/11/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data = Array(1...100)
    var subData = Array(1...100)
    
    var numberOfCell: Int = 0 {
        didSet {
            title = "Số cell: \(numberOfCell)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = SubtitleCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "Cell")
            numberOfCell += 1
        }
        cell?.textLabel?.text = "\(data[indexPath.row])"
        if ![10,20,30,40,50,60,70,80,90].contains(subData[indexPath.row]) {
            cell?.detailTextLabel?.text = "\(data[indexPath.row])"
        } else {
            cell?.backgroundColor = UIColor.red
        }
        return cell!
    }
    
}
