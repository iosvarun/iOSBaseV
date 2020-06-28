//
//  BaseNavigationViewController.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

class BaseNavigationViewController: UINavigationController {

     override func viewDidLoad() {
          super.viewDidLoad()
          
          self.setNavigationBarHidden(true, animated: false)
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
