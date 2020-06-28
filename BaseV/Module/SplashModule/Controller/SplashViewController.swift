//
//  SplashViewController.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

class SplashViewController: ParentViewController {
    
    // MARK: - Properties
    @IBOutlet weak var splashTableView: UITableView!
    
    var viewModel = SplashViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let font: UIFont =  Theme.Font.regular(FontSize.Regular.rawValue)
        let themeColor: UIColor = Theme.color(ColorCustomization.appThemeColor)
        
        setupViewModel()
        setupTableView()
        // Do any additional setup after loading the view.
    }
    
    private func setupViewModel() {
        viewModel = SplashViewModel(viewController: self)
    }
    
    private func setupTableView() {
        self.splashTableView.backgroundColor = .white
        viewModel.registerCellForTableView(splashTableView)
        splashTableView?.delegate = viewModel
        splashTableView?.dataSource = viewModel
        splashTableView?.rowHeight = UITableView.automaticDimension
        splashTableView?.separatorStyle = .none
        self.splashTableView?.reloadData()
    }
    
}

