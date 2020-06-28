//
//  SecondViewModel.swift
//  BaseV
//
//  Created by Varun Kumar on 17/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit

class SecondViewModel: NSObject {
    
    weak var viewController: SecondViewController! = nil
    
    convenience init(viewController: SecondViewController) {
        self.init()
        self.viewController = viewController
    }
    
    /// - Parameter tableView: tableView description
    func registerCellForTableView(_ tableView: UITableView) {
        tableView.registerReusableCell(SecondTableViewCell.self)
    }
    
    /// Function to create Location data tableViewCell
    ///
    /// - Parameters:
    ///   - indexPath: tableView Indexpath object
    ///   - tableView: tableView Object
    /// - Returns: Valid UITableViewCell Object
    func cellForList(indexPath: IndexPath, tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as SecondTableViewCell
        cell.selectionStyle = .none
        return cell
    }
}

extension SecondViewModel: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension SecondViewModel: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return self.cellForList(indexPath: indexPath, tableView: tableView)
    }
}
