//
//  Album.swift
//  Playlist
//
//  Created by Nathan on 8/29/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import UIKit

struct Album {
    
    // MARK: - Properties
    
    let artistId: Int
    let artistName: String
    let name: String
    let artworkUrl: String
    var artwork: UIImage?
    let explicit: Bool
    let releaseDate: NSDate
    let genre: String
    
    var releaseYear: String {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Year], fromDate: releaseDate)
        return "\(components.year)"
    }
    
    // MARK: - Initializers
    
    init?(dictionary: [String: AnyObject]) {
        guard let artistId = dictionary[kArtistId] as? Int,
            artistName = dictionary[kArtistName] as? String,
            name = dictionary[kName] as? String,
            artworkUrl = dictionary[kArtworkUrl] as? String,
            explicitness = dictionary[kExplicitness] as? String,
            releaseDate = dictionary[kReleaseDate] as? String,
            genre = dictionary[kGenre] as? String else {
                return nil
        }
        self.artistId = artistId
        self.artistName = artistName
        self.name = name
        self.artworkUrl = artworkUrl
        self.explicit = explicitness == kExplicit ? true : false
        self.genre = genre
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        self.releaseDate = dateFormatter.dateFromString(releaseDate) ?? NSDate()
        
    }
    
    // MARK: - Keys
    
    private let kArtistId = "artistId"
    private let kArtistName = "artistName"
    private let kName = "collectionName"
    private let kArtworkUrl = "artworkUrl100"
    private let kExplicitness = "collectionExplicitness"
    private let kExplicit = "explicit"
    private let kReleaseDate = "releaseDate"
    private let kGenre = "primaryGenreName"
    //    private let k<#NAME#> = "<#KEY#>"
}
