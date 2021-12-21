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
        
        /*
         [Example JSON]
         {
           "name": "Jang",
           "idx": 9169,
           "email": "hyo961015@naver.com"
         }
         */
        
        JN.request(url: "https://gist.githubusercontent.com/hyo961015/12c792ac5856900ea4fb5640f8c5d4e4/raw/299ec4b301973eef7dc3bff4031507dbefa6629f/example.json") {(result) in
            
            switch result {
                
            case .success(let data):
                print("json : ", String(data: data, encoding: .utf8)!)
                guard let demoModel = try? JSONDecoder().decode(DemoModel.self, from: data) else {
                    return
                }
                print(demoModel.name)
                print(demoModel.idx)
                print(demoModel.email)
                break
            case .failure(let error):
                
                print(error.description)
            }
        }
    }
    
}

