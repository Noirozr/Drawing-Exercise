//
//  ViewController.swift
//  Drawing
//
//  Created by liuyongjia on 15/10/16.
//  Copyright © 2015年 liuyongjia. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let kOffset: CGFloat = 40
    let kheight = UIScreen.mainScreen().bounds.height - 40
    let kwidth = UIScreen.mainScreen().bounds.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = DrawView(frame: CGRectMake(0, kOffset, kwidth, kheight))
        self.view.addSubview(view)
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

