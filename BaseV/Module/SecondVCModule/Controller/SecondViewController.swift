//
//  SecondViewController.swift
//  BaseV
//
//  Created by Varun Kumar on 17/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var secondTableView: UITableView!
    
    var viewModel = SecondViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
        setupTableView()
        // Do any additional setup after loading the view.
    }
    
    private func setupViewModel() {
        viewModel = SecondViewModel(viewController: self)
    }
    
    private func setupTableView() {
        self.secondTableView.backgroundColor = .white
        viewModel.registerCellForTableView(secondTableView)
        secondTableView?.delegate = viewModel
        secondTableView?.dataSource = viewModel
        secondTableView?.rowHeight = UITableView.automaticDimension
        secondTableView?.separatorStyle = .none
        self.secondTableView?.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
