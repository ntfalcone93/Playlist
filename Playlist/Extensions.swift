//
//  Extensions.swift
//  Playlist
//
//  Created by Nathan on 8/29/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import Foundation

extension Array {
    func toDictionary() -> [String : AnyObject] {
        var dicToReturn = [String : AnyObject]()
        self.forEach { (item) in
            dicToReturn.updateValue(true, forKey: String(item))
        }
        return dicToReturn
    }
}