//
//  LoginViewController.swift
//  CarbonAppClone
//
//  Created by Decagon on 25/08/2021.
//

import UIKit
 
class LoginViewController: UIViewController {
 
  
  private var loginViewModel = LoginViewModel()
  
  let logoImageView: UIImageView = {
    let logoView = UIImageView()
    logoView.translatesAutoresizingMaskIntoConstraints = false
    logoView.contentMode = .scaleAspectFit
    logoView.backgroundColor = .white
    logoView.image = UIImage(named: "CarbonLogo")
    logoView.clipsToBounds = true
    return logoView
  }()
  
  let welcomeLabel: UILabel = {
    let label = UILabel()
    label.text = "Hi there, welcome back. Please sign in"
    label.font = UIFont(name: "Helvetica", size: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let numberLabel: UILabel = {
    let label = UILabel()
    label.text = "Email Address"
    label.font = UIFont(name: "Helvetica", size: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let passwordLabel: UILabel = {
    let label = UILabel()
    label.text = "Password"
    label.font = UIFont(name: "Helvetica", size: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let signInLabel: UILabel = {
    let label = UILabel()
    label.text = "New to Carbon?"
    label.font = UIFont(name: "Helvetica", size: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let emailTextField: LeftPaddedTextField = {
      let textField = LeftPaddedTextField()
      textField.layer.borderColor = UIColor.lightGray.cgColor
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      textField.layer.borderWidth = 0
      textField.keyboardType = .emailAddress
      textField.layer.cornerRadius = 8
      return textField
  }()
  
  let passwordTextField: LeftPaddedTextField = {
      let textField = LeftPaddedTextField()
      textField.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
      textField.layer.borderColor = UIColor.lightGray.cgColor
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
      textField.layer.borderWidth = 0
      textField.isSecureTextEntry = true
      textField.layer.cornerRadius = 8
      return textField
  }()
  
  let loginButton: UIButton = {
      let button = UIButton(type: .system)
      button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
      button.addTarget(self, action: #selector(didTapSignInButton), for: .touchUpInside)
      button.translatesAutoresizingMaskIntoConstraints = false
      button.setTitle("Sign in", for: .normal)
      button.setTitleColor(.white, for: .normal)
      button.layer.cornerRadius = 8
      return button
  }()
  
  let signUpButton: UIButton = {
    let signButton = UIButton()
    signButton.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
    signButton.setTitle("Set up a new account", for: .normal)
    signButton.backgroundColor = .clear
    signButton.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    signButton.titleLabel?.font = UIFont(name: "Helvetica", size: 16)
    signButton.translatesAutoresizingMaskIntoConstraints = false
    return signButton
  }()
  
  let forgotPinButton: UIButton = {
    let pinButton = UIButton()
    pinButton.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
    pinButton.setTitle("Forgot PIN?", for: .normal)
    pinButton.backgroundColor = .clear
    pinButton.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    pinButton.titleLabel?.font = UIFont(name: "Helvetica", size: 16)
    pinButton.translatesAutoresizingMaskIntoConstraints = false
    return pinButton
  }()
  
  @objc func didTapSignInButton(_ sender: Any) {
    // Move to the next screen
    
    let request = LoginRequest(userEmail: emailTextField.text, userPassword: passwordTextField.text)
    loginViewModel.loginUser(loginRequest: request)
  }

    override func viewDidLoad() {
        super.viewDidLoad()
      
      view.backgroundColor = .white
      view.addSubview(logoImageView)
      view.addSubview(emailTextField)
      view.addSubview(passwordTextField)
      view.addSubview(loginButton)
      view.addSubview(welcomeLabel)
      view.addSubview(passwordLabel)
      view.addSubview(numberLabel)
      view.addSubview(signInLabel)
      view.addSubview(signUpButton)
      view.addSubview(forgotPinButton)
      
      loginViewModel.delegate = self
      
      setupLoginConstraint()
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

