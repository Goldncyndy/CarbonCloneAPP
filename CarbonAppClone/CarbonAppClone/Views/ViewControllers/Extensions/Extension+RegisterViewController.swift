//
//  Extension+RegisterViewController.swift
//  CarbonAppClone
//
//  Created by Decagon on 25/08/2021.
//

import UIKit

extension RegisterViewController {
  

  // MARK: - FUNCTION TO LAYOUT CONSTRAINTS
func constraintViews() {
  welcomeTextLabel.anchorWithConstantsToTop(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 10, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
  
  // MARK: - LAYOUT CONSTRAINTS
  NSLayoutConstraint.activate([
    
    firstNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    firstNameLabel.heightAnchor.constraint(equalToConstant: 50),
    firstNameLabel.topAnchor.constraint(equalTo: welcomeTextLabel.bottomAnchor, constant: 10),
    
    firstNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    firstNameTextField.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -10),
    firstNameTextField.heightAnchor.constraint(equalToConstant: 50),
    firstNameTextField.topAnchor.constraint(equalTo: welcomeTextLabel.bottomAnchor, constant: 45),
    
    middleNameLabel.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
    middleNameLabel.heightAnchor.constraint(equalToConstant: 50),
    middleNameLabel.topAnchor.constraint(equalTo: welcomeTextLabel.bottomAnchor, constant: 10),
    
    middleNameTextField.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
    middleNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
    middleNameTextField.heightAnchor.constraint(equalToConstant: 50),
    middleNameTextField.topAnchor.constraint(equalTo: welcomeTextLabel.bottomAnchor, constant: 45),
    
    lastNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    lastNameLabel.heightAnchor.constraint(equalToConstant: 50),
    lastNameLabel.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 10),
    
    lastNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    lastNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
    lastNameTextField.heightAnchor.constraint(equalToConstant: 50),
    lastNameTextField.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: -15),
    
    emailAddressLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    emailAddressLabel.heightAnchor.constraint(equalToConstant: 50),
    emailAddressLabel.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 15),
    
    genderLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    genderLabel.heightAnchor.constraint(equalToConstant: 50),
    genderLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
    
    phoneNumberLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    phoneNumberLabel.heightAnchor.constraint(equalToConstant: 50),
    phoneNumberLabel.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 15),
    
    emailAddressTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    emailAddressTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
    emailAddressTextField.heightAnchor.constraint(equalToConstant: 50),
    emailAddressTextField.topAnchor.constraint(equalTo: emailAddressLabel.bottomAnchor, constant: -15),
    
    passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    passwordLabel.heightAnchor.constraint(equalToConstant: 50),
    passwordLabel.topAnchor.constraint(equalTo: emailAddressTextField.bottomAnchor, constant: 10),
    
    passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
    passwordTextField.heightAnchor.constraint(equalToConstant: 50),
    passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: -15),
    
    createAccountButton.heightAnchor.constraint(equalToConstant: 52),
    createAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
    createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
    createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
    
    genderTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    genderTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
    genderTextField.heightAnchor.constraint(equalToConstant: 50),
    genderTextField.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: -15),
    
    phoneNumberTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
    phoneNumberTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
    phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
    phoneNumberTextField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: -15),
    
    acceptTermsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
    acceptTermsLabel.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 30),
    
    termsOfServiceButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60),
    termsOfServiceButton.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 25),
    
    andLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150),
    andLabel.topAnchor.constraint(equalTo: acceptTermsLabel.bottomAnchor, constant: 5),
    
    privacyPolicyButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -155),
    privacyPolicyButton.topAnchor.constraint(equalTo: acceptTermsLabel.bottomAnchor, constant: 1)
    ])
  }
  
  func addDefaultViews() {
    navigationController?.navigationBar.isHidden = false
  
    self.navigationItem.title = "Create your Carbon account"
    view.backgroundColor = .white
    
    view.addSubview(welcomeTextLabel)
    view.addSubview(firstNameTextField)
    view.addSubview(middleNameTextField)
    view.addSubview(lastNameTextField)
    view.addSubview(firstNameLabel)
    view.addSubview(middleNameLabel)
    view.addSubview(lastNameLabel)
    view.addSubview(lastNameField)
    view.addSubview(emailAddressLabel)
    view.addSubview(emailAddressTextField)
    view.addSubview(passwordLabel)
    view.addSubview(passwordTextField)
    view.addSubview(createAccountButton)
    view.addSubview(genderLabel)
    view.addSubview(genderTextField)
    view.addSubview(phoneNumberLabel)
    view.addSubview(phoneNumberTextField)
    view.addSubview(acceptTermsLabel)
    view.addSubview(termsOfServiceButton)
    view.addSubview(andLabel)
    view.addSubview(privacyPolicyButton)
  }

@objc func didTapServiceButton() {
  // Move to the next screen
  let newViewController = RegisterViewController()
  self.navigationController?.pushViewController(newViewController, animated: true)
}

@objc func didTapPrivacyButton() {
  // Move to the next screen
  let newViewController = PersonalDetailsViewController()
  self.navigationController?.pushViewController(newViewController, animated: true)
}

@objc func didTapSignUpButton() {
  // Move to the next screen
//  let newViewController = PersonalDetailsViewController()
//  self.navigationController?.pushViewController(newViewController, animated: true)
  
  let request = SignUpRequest (firstName: firstNameTextField.text, middleName: middleNameTextField.text, lastname: lastNameTextField.text, emailAddress: emailAddressTextField.text, password: passwordTextField.text, gender: genderTextField.text, phonenumber: phoneNumberTextField.text)
    
  signUpViewModel.signUpUser(signUpRequest: request)
    
  
  }
}


extension RegisterViewController: signUpModelDelegate {
    
  func didReceiveSignUpResponse(signUpResponse: SignUpResponse?) {
        
        if (signUpResponse?.errorMessage == nil && signUpResponse?.data != nil) {
     
          let newSegue = PersonalDetailsViewController()
                self.navigationController?.pushViewController(newSegue, animated: true)
            
        } else if (signUpResponse?.errorMessage != nil) {
            
            guard let errorMessage = signUpResponse?.errorMessage else {
                return
            }
            let alert = AlertService.alert(with: Constants.ErrorAlertTitle,
                                           message: errorMessage,
                                           alertStyle: .alert)
            
            self.present(alert, animated: true)
        }
    }
}
