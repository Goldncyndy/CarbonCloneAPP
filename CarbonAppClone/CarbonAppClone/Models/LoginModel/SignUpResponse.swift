//
//  SignUpResource.swift
//  CarbonAppClone
//
//  Created by Decagon on 26/08/2021.
//

import UIKit


struct SignUpResponse: Decodable {

    var errorMessage: String?
    let data: LoginData?
}

struct LoginData: Decodable {
  let password: String
  let id: String
  let email: String

  enum CodingKeys: String, CodingKey {
      case password
      case id = "id"
      case email
  }
}
