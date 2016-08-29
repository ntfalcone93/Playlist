//
//  User.swift
//  Playlist
//
//  Created by Nathan on 8/29/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import Foundation

struct User: FirebaseType {
    
    // MARK: - Properties
    
    let phoneNumber: String
    let firstName: String
    let lastName: String
    var identifier: String?
    
    var endpoint: String {
        return "users"
    }
    
    var dictionaryCopy: [String : AnyObject] {
        return [kPhoneNumber : phoneNumber, kFirstName : firstName, kLastName : lastName]
    }
    
    // MARK: - Initializers
    
    init?(dictionary: [String: AnyObject], identifier: String) {
        guard let phoneNumber = dictionary[kPhoneNumber] as? String,
            firstName = dictionary[kFirstName] as? String,
            lastName = dictionary[kLastName] as? String else {
                return nil
        }
        self.phoneNumber = phoneNumber
        self.firstName = firstName
        self.lastName = lastName
    }
    
    // MARK: - Keys
    
    private let kPhoneNumber = "phoneNumber"
    private let kFirstName = "firstName"
    private let kLastName = "lastName"
}