//
//  ViewController.swift
//  Demo
//
//  Created by 장효원 on 2021/12/21.
//

import UIKit
import JangNetwork

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("test")
        
        JN.request(url: "https://gist.githubusercontent.com/hyo961015/12c792ac5856900ea4fb5640f8c5d4e4/raw/299ec4b301973eef7dc3bff4031507dbefa6629f/example.json") {(result) in
            
            print(result)
        }
    }


}

