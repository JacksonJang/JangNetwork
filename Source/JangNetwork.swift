//
//  JangNetwork.swift
//  JangNetwork
//
//  Created by 장효원 on 2021/12/19.
//

import UIKit

public let JN = JangNetwork.shared

open class JangNetwork: NSObject {
    
    public static let shared = JangNetwork()

    public func request(method: Method = .GET, url: String, params: [String: Any] = [:], headers:[String:String] = [:], callback: @escaping Handler) {
        
        var request = URLRequest(url: URL(string: url)!)
        
        //Set Method
        request.httpMethod = method.rawValue
        
        //Check Param
        if !(params.isEmpty) {
            let paramString = (params.compactMap({ (key, value) -> String in
                return "\(key)=\(value)"
            }) as Array).joined(separator: "&")
            let bodyData = paramString.data(using: .utf8)
            
            request.httpBody = bodyData
        }
        
        //Check Headers
        if (headers.isEmpty) {
            request.setValue(ContentType.APPLICATION_FORM_URLENCODED.rawValue, forHTTPHeaderField: "Content-Type")
        } else {
            for (key, item) in headers {
                request.setValue(item, forHTTPHeaderField: key)
            }
        }
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    print(error.localizedDescription)
                } else if let httpResponse = response as? HTTPURLResponse {
                    if httpResponse.statusCode == 200 {
                        callback(.success(data!))
                    } else {
                        callback(.failure(true))
                    }
                }
            }
        })
        task.resume()
    }
    
}
