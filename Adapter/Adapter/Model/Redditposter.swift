//
//  Redditposter.swift
//  Adapter
//
//  Created by Praveen Jangre on 12/06/2025.
//

import Foundation

public class Redditposter {
    public init() {}
    
    public func share(text: String, completionHandler: ((Error?) -> Void)?){
        print("Message \"\(text)\" posted to Reddit")
        completionHandler?(nil)

    }
}
