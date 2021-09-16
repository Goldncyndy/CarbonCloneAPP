//
//  Extension+PersonalDetailsViewController.swift
//  CarbonAppClone
//
//  Created by Decagon on 25/08/2021.
//

import UIKit

extension PersonalDetailsViewController {
  
  // MARK: - FUNCTION TO LAYOUT CONSTRAINTS
func constraintViews() {
    
    purpleView.anchorWithConstantsToTop(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 10, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
    
   // MARK: - LAYOUT CONSTRAINTS
  NSLayoutConstraint.activate([
      
      firstNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      firstNameLabel.heightAnchor.constraint(equalToConstant: 40),
      firstNameLabel.topAnchor.constraint(equalTo: purpleView.bottomAnchor, constant: 10),
      
      firstNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      firstNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
      firstNameTextField.heightAnchor.constraint(equalToConstant: 50),
      firstNameTextField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: -10),
      
      middleNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      middleNameLabel.heightAnchor.constraint(equalToConstant: 40),
      middleNameLabel.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 10),
      
      middleNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      middleNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
      middleNameTextField.heightAnchor.constraint(equalToConstant: 50),
      middleNameTextField.topAnchor.constraint(equalTo: middleNameLabel.bottomAnchor, constant: -10),
      
      lastNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      lastNameLabel.heightAnchor.constraint(equalToConstant: 40),
      lastNameLabel.topAnchor.constraint(equalTo: middleNameTextField.bottomAnchor, constant: 10),
      
      lastNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      lastNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
      lastNameTextField.heightAnchor.constraint(equalToConstant: 50),
      lastNameTextField.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: -10),
      
      emailAddressLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      emailAddressLabel.heightAnchor.constraint(equalToConstant: 40),
      emailAddressLabel.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 15),
      
      emailAddressTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      emailAddressTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
      emailAddressTextField.heightAnchor.constraint(equalToConstant: 50),
      emailAddressTextField.topAnchor.constraint(equalTo: emailAddressLabel.bottomAnchor, constant: -10),
      
      passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      passwordLabel.heightAnchor.constraint(equalToConstant: 40),
      passwordLabel.topAnchor.constraint(equalTo: emailAddressTextField.bottomAnchor, constant: 10),
      
      passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
      passwordTextField.heightAnchor.constraint(equalToConstant: 50),
      passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: -10),
      
      genderLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      genderLabel.heightAnchor.constraint(equalToConstant: 40),
      genderLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
      
      genderTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      genderTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
      genderTextField.heightAnchor.constraint(equalToConstant: 50),
      genderTextField.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: -10),
      
      phoneNumberLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      phoneNumberLabel.heightAnchor.constraint(equalToConstant: 40),
      phoneNumberLabel.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 15),
      
      phoneNumberTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
      phoneNumberTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
      phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
      phoneNumberTextField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: -10),
      
      nextButton.heightAnchor.constraint(equalToConstant: 52),
      nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
      nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
     
    ])
  }
  
  func addDefaultViews() {
    navigationController?.navigationBar.isHidden = false
  
    self.navigationItem.title = "Personal details"
    view.backgroundColor = .white
    
    view.addSubview(purpleView)
    view.addSubview(firstNameTextField)
    view.addSubview(middleNameTextField)
    view.addSubview(lastNameTextField)
    view.addSubview(firstNameLabel)
    view.addSubview(middleNameLabel)
    view.addSubview(lastNameLabel)
    view.addSubview(emailAddressLabel)
    view.addSubview(emailAddressTextField)
    view.addSubview(passwordLabel)
    view.addSubview(passwordTextField)
    view.addSubview(nextButton)
    view.addSubview(genderLabel)
    view.addSubview(genderTextField)
    view.addSubview(phoneNumberLabel)
    view.addSubview(phoneNumberTextField)
  }

@objc func didTapServiceButton() {
  // Move to the next screen
  let newViewController = RegisterViewController()
  self.navigationController?.pushViewController(newViewController, animated: true)
}

@objc func didTapPrivacyButton() {
  // Move to the next screen
  let newViewController = OnboardingViewController()
  self.navigationController?.pushViewController(newViewController, animated: true)
    }
  }
//
//func urlSession() {
//
//  let sharedSession = URLSession.shared
//
//  if let url = URL(string: "https://6120b93b24d11c001762ed5f.mockapi.io/api/v1/signup") {
//
//          // Create Request
//  let request = URLRequest(url: url)
//
//  let dataTask = sharedSession.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
//    if let data = data,
//       let text = UITextField(data: data) {
//
//                 DispatchQueue.main.async {
//                  self.firstNameTextField.text = text
//                  self.middleNameTextField.text = text
//                  self.lastNameTextField.text = text
//                  self.phoneNumberTextField.text = text
//                  self.genderTextField.text = text
//                  self.passwordTextField.text = text
//                  self.emailAddressTextField.text = text
//                 }
//             }
//         })
//  dataTask.resume()
//  }
//}

