//
//  ScrollViewController.swift
//  Test9
//
//  Created by sun on 2018/12/16.
//  Copyright © 2018 孙建伟. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController,UIScrollViewDelegate {

    var page:UIPageControl = UIPageControl.init();
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
       
        let sc:UIScrollView = UIScrollView.init(frame: CGRect.init(x: 0, y: 200, width: self.view.bounds.size.width, height: 200));
        self.view.addSubview(sc);
        sc.contentSize = CGSize.init(width: self.view.bounds.size.width * 3, height: 200);
        sc.isPagingEnabled = true;
        sc.delegate = self;
        
        
        for index in 0..2 {
            let view:UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: 200));
            if index == 0{
                view.backgroundColor = UIColor.green;
            }elseif(index == 0){
               view.backgroundColor = UIColor.orange;
            }else{
                view.backgroundColor = UIColor.blue;
            }
            sc.addSubview(view)
        }
        
        
        
        self.page.frame = CGRect.init(x: 0, y: 400, width: 200, height: 30);
        page.currentPage = 0;
        page.currentPageIndicatorTintColor = UIColor.green;
        page.pageIndicatorTintColor = UIColor.gray;
        self.view.addSubview(page);
        
        
        
        
        
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        self.page.currentPage = Int(scrollView.contentOffset.x/self.view.bounds.size.width);
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
