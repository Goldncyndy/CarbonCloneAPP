//
//  Extension+LoginViewController.swift
//  CarbonAppClone
//
//  Created by Decagon on 25/08/2021.
//

import UIKit

extension LoginViewController {
  
  // MARK: - FUNCTION TO LAYOUT CONSTRAINTS
func setupLoginConstraint() {
  navigationController?.navigationBar.isHidden = true
  
NSLayoutConstraint.activate([

  // MARK: - LAYOUT CONSTRAINT
  logoImageView.heightAnchor.constraint(equalToConstant: 100),
  logoImageView.widthAnchor.constraint(equalToConstant: 200),
  logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
  logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
  
  welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 85),
  welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
  
  numberLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
  numberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
  numberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
  
  emailTextField.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 5),
  emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
  emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
  emailTextField.heightAnchor.constraint(equalToConstant: 52),
  
  passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
  passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
  passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
  
  forgotPinButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
  forgotPinButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 17),
  
  passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
  passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
  passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
  passwordTextField.heightAnchor.constraint(equalToConstant: 52),
  
  loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
  loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
  loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
  loginButton.heightAnchor.constraint(equalToConstant: 52),
  
  signInLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 15),
  signInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
  
  signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
  signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75)
  ])
}

  @objc func didTapSignUpButton() {
    // Move to the next screen
    let newViewController = RegisterViewController()
    self.navigationController?.pushViewController(newViewController, animated: true)
  }
}

extension LoginViewController: LoginViewModelDelegate {
    
    func didReceiveLoginResponse(loginResponse: LoginResponse?) {
        
        if (loginResponse?.errorMessage == nil && loginResponse?.data != nil) {
     
          let newSegue = PersonalDetailsViewController()
                self.navigationController?.pushViewController(newSegue, animated: true)
            
        } else if (loginResponse?.errorMessage != nil) {
            
            guard let errorMessage = loginResponse?.errorMessage else {
                return
            }
            let alert = AlertService.alert(with: Constants.ErrorAlertTitle,
                                           message: errorMessage,
                                           alertStyle: .alert)
            
            self.present(alert, animated: true)
        }
    }
}
