//
//  Common.swift
//  JangNetwork
//
//  Created by 장효원 on 2021/12/19.
//

import UIKit
//
/*
 https://www.swiftbysundell.com/posts/the-power-of-result-types-in-swift
 */
enum Result<Value: Decodable> {
    case success(Value)
    case failure(Bool)
}

typealias Handler = (Result<Data>) -> Void

public enum Method: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
}

public enum ContentType: String {
    case APPLICATION_FORM_URLENCODED = "application/x-www-form-urlencoded"
    case APPLICATION_JSON = "application/json"
}
