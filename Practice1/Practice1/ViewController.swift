//
//  ViewController.swift
//  testApp
//
//  Created by 김윤홍 on 6/18/24.
//

import UIKit

class ViewController: UIViewController {
  let myButton = UIButton()
  let myLabel = UILabel()
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //Image View
    //    let imageView = UIImageView()
    //    imageView.backgroundColor = .blue
    //    imageView.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
    //    imageView.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
    //    imageView.image = UIImage(named: "dokdo")
    //
    //    //Text Label
    //    let textLabel = UILabel()
    //    textLabel.backgroundColor = .yellow
    //    textLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
    //    textLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
    //    textLabel.text = "Hi World"
    //    textLabel.textAlignment = .center
    //
    //    //Stack View
    //    let stackView = UIStackView()
    //    stackView.axis = NSLayoutConstraint.Axis.vertical
    //    stackView.distribution = UIStackView.Distribution.equalSpacing
    //    stackView.alignment = UIStackView.Alignment.center
    //    stackView.spacing = 0.0
    //    stackView.backgroundColor = .black
    //    stackView.leadingAnchor.constraint(equalTo: self.).isActive = true;
    //    stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true;
    //    stackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true;
    //    stackView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor).isActive = true;
    //
    //    stackView.addArrangedSubview(imageView)
    //    stackView.addArrangedSubview(textLabel)
    //    stackView.translatesAutoresizingMaskIntoConstraints = false
    //
    //    self.view.addSubview(stackView)
    //
    //    //Constraints
    //    stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    //    stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    
    myButton.setTitle("This is Button", for: .normal)
    myButton.setTitleColor(.blue, for: .normal)
    myButton.backgroundColor = .darkGray
    myButton.translatesAutoresizingMaskIntoConstraints = false
    myLabel.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(myButton)
    self.view.addSubview(myLabel)
    myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    myButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
    myButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    
    myLabel.text = "HELLO"
    myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    myLabel.topAnchor.constraint(equalTo: myButton.bottomAnchor, constant: 10).isActive = true
    
    myButton.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
  }
  
  
  @objc func btnClicked() {
    let alert = UIAlertController(title: "Click!"
                                  , message: "You clicked that button"
                                  , preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Confirm"
                                  , style: .default , handler: nil))
    
    present(alert, animated: true, completion: nil)
  }
}

