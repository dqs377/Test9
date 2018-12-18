//
//  UIAlertViewController.swift
//  Test9
//
//  Created by sun on 2018/12/16.
//  Copyright © 2018 孙建伟. All rights reserved.
//

import UIKit

class UIAlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
    }

    @IBAction func alertClick(_ sender: Any) {
        let alert:UIAlertController = UIAlertController.init(title: "温馨提示", message: "狼来啦", preferredStyle: .alert);
        let action1:UIAlertAction = UIAlertAction.init(title: "取消", style: .cancel) { (action) in
            
        }
        let action2:UIAlertAction = UIAlertAction.init(title: "确定", style: .cancel) { (action) in
            
        }
        
        alert.addAction(action1);
        alert.addAction(action2);
        self.present(alert, animated: true, completion: nil);
        
        
    }
    
    @IBAction func sheetClick(_ sender: Any) {
        let alert:UIAlertController = UIAlertController.init(title: "温馨提示", message: "狼来啦", preferredStyle: .actionSheet);
        let action1:UIAlertAction = UIAlertAction.init(title: "取消", style: .cancel) { (action) in
            
        }
        let action2:UIAlertAction = UIAlertAction.init(title: "确定", style: .cancel) { (action) in
            
        }
        
        alert.addAction(action1);
        alert.addAction(action2);
        self.present(alert, animated: true, completion: nil);
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
