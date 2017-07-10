//
//  FocusDataSource.swift
//  mshao Greater China Region Airline List
//
//  Created by Mingfei Shao on 3/4/17.
//  Copyright © 2017 Mingfei Shao. All rights reserved.
//

import UIKit
import Foundation

class FocusDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    var data = [String]()
    
    init(data: [String]) {
        self.data = data
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "focus", for: indexPath) as! ListTableViewCell
        
        if data[indexPath.row] != "N/A" {
            if let airport = airports.first(where: { $0.icaoCode == data[indexPath.row] }) {
                cell.titleLabel.text = airport.toString()
            }
        } else {
            cell.titleLabel.text = data[indexPath.row]
        }
        
        return cell
    }

}
