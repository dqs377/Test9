//
//  ViewController.swift
//  Test9
//
//  Created by sun on 2018/12/16.
//  Copyright © 2018 孙建伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }


    @IBAction func gestVC(_ sender: Any) {
        
        self.navigationController?.pushViewController(GestureViewController(), animated: true);
        
        
    }
    
    @IBAction func alertVC(_ sender: Any) {
          self.navigationController?.pushViewController(UIAlertViewController(), animated: true);
    }
    
    @IBAction func scrollViewVC(_ sender: Any) {
          self.navigationController?.pushViewController(ScrollViewController(), animated: true);
    }
}

