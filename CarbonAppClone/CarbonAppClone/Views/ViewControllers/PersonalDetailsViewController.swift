//
//  PersonalDetailsViewController.swift
//  CarbonAppClone
//
//  Created by Decagon on 25/08/2021.
//

import UIKit

class PersonalDetailsViewController: UIViewController {
  
  let purpleView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .magenta
    return view
  }()
  
  let nextButton: UIButton = {
    let button = UIButton()
    button.setTitle("NEXT", for: .normal)
    button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 8
   // button.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
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
    textField.keyboardType = .default
    return textField
  }()
  
  let genderTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .default
    return textField
  }()
  
  let middleNameTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .default
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
    textField.keyboardType = .default
    return textField
  }()
  
 let phoneNumberTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .default
    return textField
  }()
  
  
  let lastNameTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .default
    return textField
  }()

  
    override func viewDidLoad() {
        super.viewDidLoad()

      view.backgroundColor = .white
      
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
