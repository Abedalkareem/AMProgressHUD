//
//  ViewController.swift
//  AMProgressHUD
//
//  Created by Abedalkareem on 05/04/2018.
//  Copyright (c) 2018 Abedalkareem. All rights reserved.
//

import UIKit
import AMProgressHUD

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    

    
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    AMProgressHUD.show()
  }
  
}

