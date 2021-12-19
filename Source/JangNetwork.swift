//
//  JangNetwork.swift
//  JangNetwork
//
//  Created by 장효원 on 2021/12/19.
//

import UIKit

class JangNetwork: Networking {
    
    static let shared = JangNetwork()

    func request(method: Method = .GET, url: String, params: [String: Any] = [:], headers:[String:String] = [:], callback: @escaping Handler) {
        request(method: method, url: url) { (result) in
           callback(result)
        }
    }
    
}
