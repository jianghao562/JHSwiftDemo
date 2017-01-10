//
//  ViewController.swift
//  JHSwiftDemo
//
//  Created by JiangHao on 2016/6/10.
//  Copyright © 2016年 JiangHao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 0, y: 20, width: view.bounds.width, height: view.bounds.width*0.6)
        let imageView = ["1.jpg","2.jpg","3.jpg","4.jpg"]
        
        let loopView = JHLoopView(frame: frame, images: imageView as NSArray, autoPlay: true, delay: 3, isFromNet: false)
        loopView.delegate = self
        
        view.addSubview(loopView)
        
    }
    
}

//遵循协议代理，调用代理方法
extension ViewController : JHLoopViewDelegate {
    func adLoopView(_ adLoopView: JHLoopView, IconClick index: NSInteger) {
        print(index)
    }
}

