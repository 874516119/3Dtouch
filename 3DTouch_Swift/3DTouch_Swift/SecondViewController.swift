//
//  SecondViewController.swift
//  3DTouch_Swift
//
//  Created by 蒋林 on 15/12/8.
//  Copyright © 2015年 蒋林. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let backgroundImage: UIImageView = UIImageView.init(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        backgroundImage.image = UIImage(named: "1")
        self.view.addSubview(backgroundImage)
        
        
        let imageView: UIImageView = UIImageView.init(frame: CGRectMake(0, 0, self.view.frame.size.width, 260))
        imageView.image = UIImage(named: "backgroundImage")
        self.view.addSubview(imageView)
        
        let label: UILabel = UILabel.init(frame: CGRectMake(10, 300, self.view.frame.size.width - 20, 50))
        label.textAlignment = NSTextAlignment.Center
        label.font = UIFont.systemFontOfSize(16)
        label.text = "3D Touch功能简单使用\n以一种自己的认为好的方式分享给大家"
        label.numberOfLines = 2
        label.textColor = UIColor.orangeColor()
        self.view.addSubview(label)
        
        
        let join: UILabel = UILabel.init(frame: CGRectMake(10, self.view.frame.size.height - 120, self.view.frame.size.width - 20, 30))
        join.textAlignment = NSTextAlignment.Center
        join.font = UIFont.systemFontOfSize(26)
        join.text = "组织等你加入: 250574085"
        self.view.addSubview(join)
    }

    override func previewActionItems() -> [UIPreviewActionItem] {
        let action1: UIPreviewAction = UIPreviewAction.init(title: "First Item", style: UIPreviewActionStyle.Default) { (UIPreviewAction, UIViewController) -> Void in
            print("what's this First Item")
        }
        
        let action2: UIPreviewAction = UIPreviewAction.init(title: "Second Item", style: UIPreviewActionStyle.Default) { (UIPreviewAction, UIViewController) -> Void in
            print("what's this Second Item")
        }
        
        let action3: UIPreviewAction = UIPreviewAction.init(title: "Third Item", style: UIPreviewActionStyle.Default) { (UIPreviewAction, UIViewController) -> Void in
            print("what's this Third Item")
        }
        
        let action4: UIPreviewAction = UIPreviewAction.init(title: "Fourth Item", style: UIPreviewActionStyle.Default) { (UIPreviewAction, UIViewController) -> Void in
            print("what's this Fourth Item")
        }
        
        let actionItems: NSArray = [action1, action2, action3, action4]
        
        return actionItems as! [UIPreviewActionItem]
    }
}
