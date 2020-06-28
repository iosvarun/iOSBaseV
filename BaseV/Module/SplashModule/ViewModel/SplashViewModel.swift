//
//  SplashViewModel.swift
//  BaseV
//
//  Created by Varun Kumar on 17/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

class SplashViewModel: NSObject {
    
    weak var viewController: SplashViewController! = nil
    
    convenience init(viewController: SplashViewController) {
           self.init()
           self.viewController = viewController
       }
    
    /// - Parameter tableView: tableView description
    func registerCellForTableView(_ tableView: UITableView) {
        tableView.registerReusableCell(SplashTableViewCell.self)
    }
    
    /// Function to create Location data tableViewCell
    ///
    /// - Parameters:
    ///   - indexPath: tableView Indexpath object
    ///   - tableView: tableView Object
    /// - Returns: Valid UITableViewCell Object
    func cellForList(indexPath: IndexPath, tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as SplashTableViewCell
        cell.configureCell(titleText: "Varun", description: "Pan Oasis Noida sector 70")
        cell.selectionStyle = .none
        return cell
    }
    
}

extension SplashViewModel: UITableViewDelegate {
    /*
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UITableViewHeaderFooterView()
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    */
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension SplashViewModel: UITableViewDataSource {
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
