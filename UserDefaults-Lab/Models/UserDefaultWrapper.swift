//
//  UserDefaultWrapper.swift
//  UserDefaults-Lab
//
//  Created by Angela Garrovillas on 9/24/19.
//  Copyright © 2019 Angela Garrovillas. All rights reserved.
//

import Foundation
class UserDefaultWrapper {
    
    private init () {}
    
    static let manager = UserDefaultWrapper()
    
    private let nameKey = "name"
    private let birthdayKey = "birthday"
    
    //MARK: - Gets
    func getName() -> String? {
        if let name = UserDefaults.standard.value(forKey: nameKey) as? String {
            return name
        }
        return nil
    }
    
    func getBirthday() -> (month:String,day:String)? {
        if let birthday = UserDefaults.value(forKey: birthdayKey) as? (String,String) {
            return birthday
        }
        return nil
    }
    
    //MARK: - Sets
    func store(name: String) {
        UserDefaults.standard.set(name, forKey: nameKey)
    }
    
    func store(birthdayInfo: (month:String,day:String)) {
        UserDefaults.standard.set(birthdayInfo, forKey: birthdayKey)
    }
    
}
