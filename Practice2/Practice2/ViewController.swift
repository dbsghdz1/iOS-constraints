//
//  ViewController.swift
//  Practice2
//
//  Created by 김윤홍 on 6/19/24.
//
//snapkit 사용

import UIKit

import SnapKit

class ViewController: UIViewController {
  let label = UILabel()
  let imageView = UIImageView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    labelUI()
    imageUI()
  }
  
  private func labelUI() {
    label.text = "안녕하세요"
    label.textColor = .white
    label.font = .boldSystemFont(ofSize: 30)
    
    view.addSubview(label)
    
    label.snp.makeConstraints { make in
      make.centerX.equalToSuperview()
      make.centerY.equalToSuperview()
      make.width.equalTo(140)
      make.height.equalTo(40)
    }
  }
  
  private func imageUI() {
    imageView.image = UIImage(named: "dog")
    imageView.backgroundColor = .black
    imageView.contentMode = .scaleAspectFit
    
    view.addSubview(imageView)
    imageView.snp.makeConstraints {
      $0.centerX.equalToSuperview()
      $0.width.equalTo(250)
      $0.height.equalTo(250)
      $0.bottom.equalTo(label.snp.top).inset(-20)
    }
  }
  
  

}

