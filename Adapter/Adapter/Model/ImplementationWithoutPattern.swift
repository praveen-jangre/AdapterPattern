//
//  ImplementationWithoutPattern.swift
//  Adapter
//
//  Created by Praveen Jangre on 12/06/2025.
//

import Foundation

protocol Sharing {
    func post(message: String) -> Bool
}

class FBSharer: Sharing {
    func post(message: String) -> Bool {
        print("Message \"\(message)\" shared on Facebook")
        return true // Assuming post is always successful
    }
}
class XSharer: Sharing {
    func post(message: String) -> Bool {
        print("Message \"\(message)\" shared on X")
        return true // Assuming post is always successful
    }
}

// Sharer Utility
// A naive approach to integrate the incompatible RedditPoster type

public class Sharer {
    private let services: [Sharing] = [FBSharer(), XSharer(), Redditposter()]
    //Broadcasts a message to all supported platforms
    public func broadcast(message: String) {
        for service in services {
            service.post(message: message)
        }
    }
}


// Testing the implementation

func testImplementedPattern() {
    let sharer: Sharer = Sharer()
    sharer.broadcast(message: "First post: Hello Social Networking World")
}




// MARK: The Object Adapter implementation

class RedditAdapter: Sharing {
    func post(message: String) -> Bool {
        redditService.share(text: message, completionHandler: nil)
        return true
    }
    
    private let redditService = Redditposter()
    
    
}


// MARK: Adapter through Swift type extension
extension Redditposter: Sharing {
    func post(message: String) -> Bool {
        self.share(text: message, completionHandler: nil)
        return true
    }
    
}
