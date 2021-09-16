//
//  Extension+OnboardingViewController.swift
//  CarbonAppClone
//
//  Created by Decagon on 23/08/2021.
//

import UIKit

extension OnboardingViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return pages.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
    let page = pages[indexPath.item]
    
    cell.page = page
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: view.frame.height)
  }
  
  private func  showAnimation() {
    lottieAnimation = .init(name: "carbon")
    lottieAnimation.contentMode = .scaleAspectFit
    lottieAnimation.loopMode = .repeat(2.0)
    lottieAnimation.animationSpeed = 0.7
    lottieAnimation.translatesAutoresizingMaskIntoConstraints = false
    lottieAnimation.play()
  
  }
  
  func setupSreenView() {
    
    showAnimation()
    view.addSubview(lottieAnimation)
    
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(didTapSignUpButton))
    customizeBarButton()
    
    NSLayoutConstraint.activate([

      
      // logo constraints
      lottieAnimation.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
      lottieAnimation.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
      lottieAnimation.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
      lottieAnimation.centerXAnchor.constraint(equalTo: view.centerXAnchor),

      
      // new account button
      nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
      nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      nextButton.heightAnchor.constraint(equalToConstant: 52),
    ])
  }
  
  @objc func didTapSignInButton() {
    // Move to the next screen
    let newViewController = LoginViewController()
    self.navigationController?.pushViewController(newViewController, animated: true)
  }
  
  @objc func didTapSignUpButton() {
    // Move to the next screen
    let newViewController = RegisterViewController()
    self.navigationController?.pushViewController(newViewController, animated: true)
  }
  
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
    
    let pageNumber = Int(targetContentOffset.pointee.x / view.frame.width)
    
    if pageNumber == 0 {
      
      self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(didTapSignUpButton))
      customizeBarButton()
      
    }else{
      self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign In", style: .plain, target: self, action: #selector(didTapSignInButton))
      customizeBarButton()
    }
    
    if pageNumber == pages.count {
      
      self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: #selector(didTapSignInButton))
      nextButton.isHidden = true
    } else {
      //back on regular pages
      
      //skipButton.isHidden = false
      nextButton.isHidden = false
    }
    
    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
      self.view.layoutIfNeeded()
    }, completion: nil)
    
  }
}

  extension UIView {
      
    // MARK: - FUNCTION TO LAYOUT CONSTRAINTS
    
      func anchorToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil) {
          
          anchorWithConstantsToTop(top: top, left: left, bottom: bottom, right: right, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
      }
      
      func anchorWithConstantsToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0) {
          
          translatesAutoresizingMaskIntoConstraints = false
          
          if let top = top {
              topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
          }
          
          if let bottom = bottom {
              bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant).isActive = true
          }
          
          if let left = left {
              leftAnchor.constraint(equalTo: left, constant: leftConstant).isActive = true
          }
          
          if let right = right {
              rightAnchor.constraint(equalTo: right, constant: -rightConstant).isActive = true
          }
          
      }
  }

