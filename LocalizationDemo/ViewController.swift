//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by Frank.Chen on 2017/2/12.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 生成label
        let label: UILabel = UILabel()
        label.frame = CGRect(x: self.view.frame.size.width / 2 - 100, y: self.view.frame.size.height / 2 - 25, width: 200, height: 50)
        label.text = NSLocalizedString("TestLocalization", comment: "") // 設定多國語系，填入key值
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = NSTextAlignment.center
        label.layer.cornerRadius = 10
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.darkGray
        self.view.addSubview(label)
        
        // 生成imageView
        let imageStr: String = NSLocalizedString("apple", comment: "") // 設定多國語系，填入key值
        let image: UIImage = UIImage(named: imageStr)!
        let imageView: UIImageView = UIImageView(image: image)
        imageView.frame = CGRect(x: self.view.frame.size.width / 2 - 100, y: label.frame.origin.y + label.frame.size.height + 20, width: 200, height: 200)
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

