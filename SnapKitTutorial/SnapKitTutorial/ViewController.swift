//
//  ViewController.swift
//  SnapKitTutorial
//
//  Created by Duy Bui on 4/14/19.
//  Copyright © 2019 DuyBui. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let childView = UIView()
    childView.backgroundColor = .red
    self.view.addSubview(childView)
    
    let anotherChildView = UIView()
    anotherChildView.backgroundColor = .yellow
    self.view.addSubview(anotherChildView)
    
    childView.snp.makeConstraints { (make) in
      make.size.equalTo(CGSize(width: 300, height: 300))
      make.top.equalTo(self.view.snp.top).offset(100)
      make.centerX.equalTo(self.view)
    }
    
    anotherChildView.snp.makeConstraints { (make) in
      make.size.equalTo(childView)
      make.top.equalTo(childView.snp.bottom).offset(50)
      make.centerX.equalTo(self.view)
    }
    
    // Add constraints for the first example
    //
//    childView.snp.makeConstraints { (make) in
//      make.edges.equalTo(self.view)
//    }
  }


}

