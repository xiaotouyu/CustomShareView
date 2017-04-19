//
//  ViewController.swift
//  CustomShareView
//
//  Created by dashuios126 on 17/3/15.
//  Copyright © 2017年 dashuios126. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CustomShareViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    @IBAction func share(_ sender: UIButton) {
        let frame = CGRect(x: 0, y: view.frame.height, width: view.frame.width, height: 0)
        let title = ["QQ","QQ","QQ","QQ","QQ","QQ","QQ","QQ","QQ","QQ","QQ","QQ","QQ"]
        let icon = ["icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_","icon_log_qq_63x63_"]
        let shareView = CustomShareView(frame: frame, sourceArray: title, iconArray: icon)
        shareView.delegate = self
//        shareView.title = "分享测试"
        shareView.actionViewShow()
    }
    func shareToPlatWithIndex(_ index: Int, title: String) {
        print(index, title)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

