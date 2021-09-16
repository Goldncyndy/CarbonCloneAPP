//
//  UserDefaultUtility.swift
//  CarbonAppClone
//
//  Created by Decagon on 25/08/2021.
//

import Foundation

struct UserDefaultUtility {
 static func saveUserID(userID: String){
    UserDefaults.standard.setValue(userID, forKey: "userID")
  }
  static func getUserID() -> String {
    return UserDefaults.standard.value(forKey: "userID") as! String
  }
}
