//
//  LoginRequest.swift
//  CarbonAppClone
//
//  Created by Decagon on 25/08/2021.
//

import Foundation

struct LoginRequest: Encodable {
    var id: String?
    var userEmail: String?
    var userPassword: String?
}
