//
//  GestureViewController.swift
//  Test9
//
//  Created by sun on 2018/12/16.
//  Copyright © 2018 孙建伟. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    let view2:UIView = UIView.init();
    override func viewDidLoad() {
        super.viewDidLoad()
        view2.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100);
        view2.backgroundColor = UIColor.green;
        self.view.addSubview(view2);
        
        view2.layer.shadowColor = UIColor.lightGray.cgColor;
        view2.layer.shadowOffset = CGSize.init(width: 5, height: 5);
        
       let tapGes = UITapGestureRecognizer(target: self, action: #selector(tapGesAction(_:)))
        
        let pinchGes = UIPinchGestureRecognizer(target: self, action: #selector(pinchGesAction(_ :)));
       
        let panGes = UIPanGestureRecognizer(target: self, action: #selector(panGesAction(_ :)))
        
        let rotationGes = UIRotationGestureRecognizer(target: self, action: #selector(rotationGesAction(_ :)));
        
        self.view1.addGestureRecognizer(tapGes);
        self.view1.addGestureRecognizer(pinchGes);
        self.view1.addGestureRecognizer(panGes);
        self.view1.addGestureRecognizer(rotationGes);
        
        self.view2.addGestureRecognizer(tapGes);
        self.view2.addGestureRecognizer(pinchGes);
        self.view2.addGestureRecognizer(panGes);
        self.view2.addGestureRecognizer(rotationGes);

        // Do any additional setup after loading the view.
    }
    @objc func tapGesAction(_ tap:UITapGestureRecognizer){
        let view:UIView? = tap.view;
        if let view = view {
             view.removeFromSuperview();
        }
     
        
    }
    @objc func pinchGesAction(_ tap:UIPinchGestureRecognizer){
         let view:UIView? = tap.view;
         if let view = view {
            let scale = tap.scale
            view.transform = view.transform.scaledBy(x: scale, y: scale)
            // 复位
            tap.scale = 1
         
         }
    }
    @objc func panGesAction(_ tap:UIPanGestureRecognizer){
        let view:UIView? = tap.view;
        if let view = view {
            view.center = tap.translation(in: self.view);
        }
    }
    @objc func rotationGesAction(_ tap:UIRotationGestureRecognizer){
        let view:UIView? = tap.view;
        if let view = view {
            let rotation = tap.rotation
            view.transform = view.transform.rotated(by: rotation)
            // 置零
            tap.rotation = 0
       
            
        }
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
