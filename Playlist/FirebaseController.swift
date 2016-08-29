//
//  FirebaseController.swift
//  MyPets
//
//  Created by Nathan on 6/8/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import Foundation
import Firebase

class FirebaseController {
    
    static let ref = FIRDatabase.database().reference()
}

protocol FirebaseType {
    var endpoint: String {get}
    var identifier: String? {get set}
    var dictionaryCopy: [String: AnyObject] {get}
    
    init?(dictionary: [String: AnyObject], identifier: String)
    
    mutating func save()
    func delete()
}

extension FirebaseType {
    
    mutating func save() {
        guard let identifier = identifier else {
            let newEndpoint = FirebaseController.ref.child(endpoint).childByAutoId()
            self.identifier = newEndpoint.key
            newEndpoint.updateChildValues(dictionaryCopy)
            return
        }
        FirebaseController.ref.child(endpoint).child(identifier).updateChildValues(dictionaryCopy)
    }
    
    func delete() {
        guard let identifier = identifier else {
            return
        }
        FirebaseController.ref.child(endpoint).child(identifier).removeValue()
    }
}