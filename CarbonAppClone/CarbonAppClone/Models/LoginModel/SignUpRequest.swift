//
//  SignUpRequest.swift
//  CarbonAppClone
//
//  Created by Decagon on 26/08/2021.
//

import Foundation

struct SignUpRequest: Encodable {
  
  var firstName: String?
  var middleName: String?
  var lastname:  String?
  var emailAddress: String?
  var password: String?
  var gender: String?
  var phonenumber: String?
  
}
