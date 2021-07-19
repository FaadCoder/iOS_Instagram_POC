//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Paras on 19/07/21.
//

import Foundation
import FirebaseDatabase

public class DatabaseManager{
    static let shared = DatabaseManager()
    private let database = Database.database().reference()
    // MARK: - Public
    
    public func canCreateNewUser(with email:String, username: String, completion: (Bool)->Void)
    {
        completion(true)
    }
    
    public func insertNewUser(with email:String, username: String, completion:@escaping (Bool)->Void)
    {
        database.child(email.safeDatabaseKey()).setValue(["username":username]) { error, _ in
            if error == nil{
                completion(true)
                return
            }
            else{
                completion(false)
                return
            }
        }
    }
    
    
}
