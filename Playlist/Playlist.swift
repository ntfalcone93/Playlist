//
//  Playlist.swift
//  Playlist
//
//  Created by Nathan on 8/29/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import Foundation

struct Playlist: FirebaseType {
    
    // MARK: - Properties
    
    var title: String
    var description: String
    var date: NSDate
    var songs: [Song] = []
    var memberIds: [String] = []
    var identifier: String?
    
    var endpoint: String {
        return "playlists"
    }
    
    var dictionaryCopy: [String : AnyObject] {
        return [kTitle : title, kDescription : description, kDate : date.timeIntervalSince1970, kMemberIds : memberIds.toDictionary()]
    }
    
    // MARK: - Initializers
    
    init?(dictionary: [String: AnyObject], identifier: String) {
        guard let title = dictionary[kTitle] as? String,
            description = dictionary[kDescription] as? String,
            date = dictionary[kDate] as? Double else {
                return nil
        }
        self.title = title
        self.description = description
        self.date = NSDate(timeIntervalSince1970: date)
        self.identifier = identifier
    }
    
    // MARK: - Keys
    
    private let kTitle = "title"
    private let kDescription = "description"
    private let kDate = "date"
    private let kMemberIds = "members"
}