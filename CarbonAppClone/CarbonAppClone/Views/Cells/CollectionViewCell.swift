//
//  CollectionViewCell.swift
//  CarbonAppClone
//
//  Created by Decagon on 23/08/2021.
//

import UIKit
import Lottie

class CollectionViewCell: UICollectionViewCell {
    
  let cell = "Cell"
  
  var lottieAnimation: AnimationView!
  
  var page: OnboardingPages? {
    
    didSet{
      guard let page = page else {
        return
      }
      mainImageView.image = UIImage(named: page.imageName)
      
      let color = UIColor(white: 0.2, alpha: 1)
      let attributedText = NSMutableAttributedString(string: page.title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24, weight: UIFont.Weight.bold), NSAttributedString.Key.foregroundColor: color])
      
      attributedText.append(NSAttributedString(string: "\n\n\(page.message)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: color]))
      
      let paragraphStyle = NSMutableParagraphStyle()
      paragraphStyle.alignment = .center
      
      let length = attributedText.string.count
      attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: length))
      
      onboardingTextView.attributedText = attributedText
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupViews()
  }

  let mainImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFill
    imageView.backgroundColor = .white
    imageView.image = UIImage(named: "Carbon-People")
    imageView.clipsToBounds = true
    return imageView
  }()
  
  
  let onboardingTextView: UITextView = {
    let textView = UITextView()
    textView.text = "Go beyond Banking"
    textView.isEditable = false
    return textView
  }()
  
  func setupViews() {
    
    addSubview(mainImageView)
    addSubview(onboardingTextView)
    
    mainImageView.anchorToTop(top: topAnchor, left: leftAnchor, bottom: onboardingTextView.topAnchor, right: rightAnchor)
    
    onboardingTextView.anchorToTop(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
    onboardingTextView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.35).isActive = true
    
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
