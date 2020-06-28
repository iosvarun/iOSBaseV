//
//  SplashTableViewCell.swift
//  BaseV
//
//  Created by Varun Kumar on 17/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

class SplashTableViewCell: UITableViewCell {

    // MARK: - Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /// Function to configure Cell Data
    ///
    /// - Parameter branchModel: branchModel
//    func configureCell(branchModel: KPNotificationModel) {
//
//    }
    func configureCell(titleText: String, description: String) {
        titleLabel.text = titleText
        descLabel.text = description
       
    }
    
}
