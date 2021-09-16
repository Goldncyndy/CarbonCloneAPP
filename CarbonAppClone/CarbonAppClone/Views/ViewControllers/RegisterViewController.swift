//
//  RegisterViewController.swift
//  CarbonAppClone
//
//  Created by Decagon on 25/08/2021.
//

import UIKit

class RegisterViewController: UIViewController{
  
  
  let signUpViewModel = SignUpViewModel()
  
  let welcomeTextLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "Let's set things up. Please fill out these basic details \nto get started."
    text.font = UIFont(name: "Helvetica", size: 14)
    text.textAlignment = .center
    text.numberOfLines = 2
    return text
  }()
  
  let createAccountButton: UIButton = {
    let button = UIButton()
    button.setTitle("Create account", for: .normal)
    button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
    button.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 8
   
    return button
  }()
  
  let firstNameLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "First name"
    text.font = UIFont(name: "Helvetica", size: 13)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
 let middleNameLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "Middle name"
    text.font = UIFont(name: "Helvetica", size: 13)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
 let lastNameLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "Surname"
    text.font = UIFont(name: "Helvetica", size: 13)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
  let emailAddressLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "Email address"
    text.font = UIFont(name: "Helvetica", size: 13)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
  let passwordLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "Password"
    text.font = UIFont(name: "Helvetica", size: 13)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
 let genderLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "Gender"
    text.font = UIFont(name: "Helvetica", size: 13)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
  let phoneNumberLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "Phone number"
    text.font = UIFont(name: "Helvetica", size: 13)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
  let firstNameTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    return textField
  }()
  
  let genderTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    return textField
  }()
  
  let middleNameTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    return textField
  }()
  
 let emailAddressTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    return textField
  }()
  
  let passwordTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    return textField
  }()
  
  let phoneNumberTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    return textField
  }()
  
  
 let lastNameField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    return textField
  }()
  
  let lastNameTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    return textField
  }()
  
 let acceptTermsLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "By continuing, you accept our"
    text.font = UIFont(name: "Helvetica", size: 15)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
  let termsOfServiceButton: UIButton = {
    let signButton = UIButton()
    signButton.addTarget(self, action: #selector(didTapServiceButton), for: .touchUpInside)
    signButton.setTitle("Terms of Service", for: .normal)
    signButton.backgroundColor = .clear
    signButton.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    signButton.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
    signButton.translatesAutoresizingMaskIntoConstraints = false
    return signButton
  }()
  
  let andLabel: UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.text = "&"
    text.font = UIFont(name: "Helvetica", size: 15)
    text.textAlignment = .center
    text.numberOfLines = 1
    return text
  }()
  
  let privacyPolicyButton: UIButton = {
    let signButton = UIButton()
    signButton.addTarget(self, action: #selector(didTapPrivacyButton), for: .touchUpInside)
    signButton.setTitle("Privacy Policy", for: .normal)
    signButton.backgroundColor = .clear
    signButton.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    signButton.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
    signButton.translatesAutoresizingMaskIntoConstraints = false
    return signButton
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      
      view.backgroundColor = .white
      signUpViewModel.delegate = self
      
      addDefaultViews()
      constraintViews()
    }
    
  class LeftPaddedTextField: UITextField {
      
      override func textRect(forBounds bounds: CGRect) -> CGRect {
          return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
      }
      
      override func editingRect(forBounds bounds: CGRect) -> CGRect {
          return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
      }
    }
}

