//
//  UITableViewExtensions.swift
//  BaseV
//
//  Created by Varun Kumar on 14/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

extension UITableView {
    
    /// Genric function to register tableViewCell xib
    ///
    /// - Parameter _: TableView T refers to the generic argument, T.Type means Data type of T.
    func registerReusableCell<T: UITableViewCell>(_: T.Type) {
        if let nib = T.nib {
            self.register(nib, forCellReuseIdentifier: T.reuseIdentifier)
        } else {
            self.register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
        }
    }
    
    /// Genric function to deque tableViewCell
    ///
    /// - Parameter indexPath: Indexpath
    /// - Returns: Returns a valid tableviewcell
    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            return T()
        }
        return cell
    }
    
    /// Genric function to register Header/Footer View xib
    ///
    /// - Parameter _: tableViewHeader T refers to the generic argument, T.Type means Data type of T.
    func registerReusableHeaderFooterView<T: UITableViewHeaderFooterView>(_: T.Type) {
        if let nib = T.nib {
            self.register(nib, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
        } else {
            self.register(T.self, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
        }
    }
    
    /// Genric function to deque header/footer View
    ///
    /// - Returns: Returns a valid header/footer view
    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>() -> T? {
        return self.dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier) as? T
    }
    
    // MARK: - Check If last cell into table view section
    func isLast(for indexPath: IndexPath) -> Bool {
        let indexOfLastSection = numberOfSections > 0 ? numberOfSections - 1 : 0
        let indexOfLastRowInLastSection = numberOfRows(inSection: indexOfLastSection) - 1
        return indexPath.section == indexOfLastSection && indexPath.row == indexOfLastRowInLastSection
    }
    
    /// Function to reload tableView Without Animation
    func reloadWithoutAnimation() {
        UIView.performWithoutAnimation {
            self.reloadData()
        }
    }
    
    /// Function to reload tableView With Animation
    func reloadData(completion: @escaping () -> Void) {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0.2, animations: {
                self.reloadData()
            }, completion: nil )
        }
    }
}

extension UITableViewCell: Reusable {}
extension UITableViewHeaderFooterView: Reusable {}
