//
//  OnboardingViewController.swift
//  CarbonAppClone
//
//  Created by Decagon on 22/08/2021.
//

import UIKit
import Lottie

class OnboardingViewController: UIViewController {
  
  lazy var collectionview: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.minimumLineSpacing = 0
    let onboardingCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    onboardingCollectionView.dataSource = self
    onboardingCollectionView.delegate = self
    onboardingCollectionView.isPagingEnabled = true
    onboardingCollectionView.backgroundColor = .white
    return onboardingCollectionView
  }()
  
  var lottieAnimation: AnimationView!
  
  let pages: [OnboardingPages] = {
    
    let firstPage = OnboardingPages(title: "Trusted by millions", message: "With Carbon's market leading service \n already used by millions of people just \n like you, you're in very good company.", imageName: "Carbon-People")
    let secondPage = OnboardingPages(title: "Stay on top of your finances. \n Anytime. Anywhere", message: "Carbon makes financial services faster, \n cheaper and more convenient. You can \n access the app 24/7, wherever you are", imageName: "Carbon-Card")
    let thirdPage = OnboardingPages(title: "Go beyond banking", message: "Welcome to the future. Carbon is your \n passport to world-class financial \n services, built just for you.", imageName: "Carbon-Network")
    
    return[firstPage, secondPage, thirdPage]
    
  }()
  
  let cell = "Cell"
  
  private let skipButton: UIButton = {
    let signButton = UIButton()
    signButton.setTitle("Skip", for: .normal)
    signButton.backgroundColor = .clear
    signButton.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    signButton.titleLabel?.font = UIFont(name: "Helvetica", size: 16)
    signButton.translatesAutoresizingMaskIntoConstraints = false
    return signButton
  }()
  
  let nextButton: UIButton = {
    let button = UIButton()
    button.setTitle("Set up new account", for: .normal)
    button.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
    button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 8
    
    return button
  }()
  
  let logoImageView: UIImageView = {
    let logoView = UIImageView()
    logoView.translatesAutoresizingMaskIntoConstraints = false
    logoView.contentMode = .scaleAspectFit
    logoView.backgroundColor = .white
    logoView.image = UIImage(named: "CarbonLogo")
    logoView.clipsToBounds = true
    return logoView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = .white
    view.addSubview(collectionview)
    view.addSubview(nextButton)
    setupSreenView()
    registerCells()
    
    //adding constraints
    collectionview.anchorToTop(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
  }
  
  private func registerCells() {
    collectionview.register(CollectionViewCell.self, forCellWithReuseIdentifier: cell)
  }
  
  func customizeBarButton() {
      self.navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
    }
  
}

