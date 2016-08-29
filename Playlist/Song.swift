//
//  Song.swift
//  Playlist
//
//  Created by Nathan on 8/29/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import UIKit

struct Song: FirebaseType {
    
    // MARK: - Properties
    
    let title: String
    let artist: String
    let artworkUrl: String
    var artwork: UIImage?
    let duration: Double
    let artistId: Int
    let albumId: Int
    let id: Int
    let albumName: String
    let explicit: Bool
    let genre: String
    let addedBy: String
    var identifier: String?
    
    var dictionaryCopy: [String : AnyObject] {
        return [kTitle : title, kArtist : artist, kArtworkUrl : artworkUrl, kDuration : duration, kArtistId : artistId, kAlbumId : albumId, kId : id, kAlbumName : albumName, kExplicit : explicit, kGenre : genre, kAddedBy : addedBy]
    }
    
    var endpoint: String {
        return "playlists"
    }
    
    // MARK: - Initializers
    
    init(title: String, artist: String, artworkUrl: String, duration: Double, artistId: Int, albumId: Int, id: Int, albumName: String, explicit: Bool, genre: String, addedBy: String) {
        self.title = title
        self.artist = artist
        self.artworkUrl = artworkUrl
        self.artwork = nil
        self.duration = duration
        self.artistId = artistId
        self.albumId = albumId
        self.id = id
        self.albumName = albumName
        self.explicit = explicit
        self.genre = genre
        self.addedBy = addedBy
        self.identifier = nil
    }
    
    init?(dictionary: [String : AnyObject], identifier: String) {
        guard let title = dictionary[kTitle] as? String,
            artist = dictionary[kArtist] as? String,
            artworkUrl = dictionary[kArtworkUrl] as? String,
            duration = dictionary[kDuration] as? Double,
            artistId = dictionary[kArtistId] as? Int,
            albumId = dictionary[kAlbumId] as? Int,
            id = dictionary[kId] as? Int,
            albumName = dictionary[kAlbumName] as? String,
            explicit = dictionary[kExplicit] as? Bool,
            genre = dictionary[kGenre] as? String,
            addedBy = dictionary[kAddedBy] as? String else {
                return nil
        }
        self.title = title
        self.artist = artist
        self.artworkUrl = artworkUrl
        self.artwork = nil
        self.duration = duration
        self.artistId = artistId
        self.albumId = albumId
        self.id = id
        self.albumName = albumName
        self.explicit = explicit
        self.genre = genre
        self.addedBy = addedBy
        self.identifier = identifier
    }
    
    // MARK: - Keys
    
    private let kTitle = "title"
    private let kArtist = "artist"
    private let kArtworkUrl = "artworkUrl"
    private let kDuration = "duration"
    private let kArtistId = "artistId"
    private let kAlbumId = "albumId"
    private let kId = "id"
    private let kAlbumName = "albumName"
    private let kExplicit = "explicit"
    private let kStreamable = "streamable"
    private let kGenre = "genre"
    private let kAddedBy = "addedBy"
}