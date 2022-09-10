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

  // MARK: - ViewController lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  // MARK: - IBActions

  @IBAction private func showLoading(_ sender: Any) {
    AMProgressHUD.show()
  }

}
