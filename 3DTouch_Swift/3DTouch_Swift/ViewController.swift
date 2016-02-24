//
//  ViewController.swift
//  3DTouch_Swift
//
//  Created by 蒋林 on 15/12/8.
//  Copyright © 2015年 蒋林. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIViewControllerPreviewingDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let imageView: UIImageView = UIImageView.init(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        imageView.image = UIImage(named: "1")
        self.view.addSubview(imageView)
        
        let label: UILabel = UILabel.init(frame: CGRectMake(10, self.view.frame.size.height/2 - 10, self.view.frame.size.width - 20, 20))
        label.textAlignment = NSTextAlignment.Center
        label.font = UIFont.systemFontOfSize(18)
        label.text = "点击屏幕任意地方，触发3D Touch功能"
        self.view.addSubview(label)
        
        self.registerForPreviewingWithDelegate(self, sourceView: self.view)
    }

    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        let second: SecondViewController = SecondViewController()
        second.preferredContentSize = CGSizeMake(0, 600)
        return second
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        self.showViewController(viewControllerToCommit, sender: self)
    }
}

