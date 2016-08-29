//
//  Artist.swift
//  Playlist
//
//  Created by Nathan on 8/29/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import Foundation

struct Artist {
    
    // MARK: - Properties
    
    let name: String
    let artistId: Int
    let genre: String
    
    // MARK: - Initializers
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[kName] as? String,
            artistId = dictionary[kArtistId] as? Int,
            genre = dictionary[kGenre] as? String else {
                return nil
        }
        self.name = name
        self.artistId = artistId
        self.genre = genre
    }
    
    // MARK: - Keys
    
    private let kName = "artistName"
    private let kArtistId = "artistId"
    private let kGenre = "primaryGenreName"
}