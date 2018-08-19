//
//  ViewController.swift
//  customtablecell
//
//  Created by kiran on 8/18/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit
struct cell {
    var cell: Int
}

struct section {
    var section: Int
}

var cellArray = [cell]()
var sectionArray = [section]()

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return cellArray.count
        }
        else
        {
            return 10
        }
//        return cellArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1")
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //cell?.selectionStyle = .none
            return cell!
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2")
            return cell!
        }

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Section1")
            return cell
        }
        else if section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Section2")
            return cell

            
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Section1")
            return cell
        }
        
        
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 360
        }
        else {
            return 100
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        cellArray = [cell(cell: 1), cell(cell: 2), cell(cell: 3), cell(cell: 4)]
        sectionArray = [section(section: 1), section(section: 2), section(section: 3), section(section: 4)]
        // Do any additional setup after loading the view, typically from a nib.
    }


}

