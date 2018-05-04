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

    //
    // Please check the AppDelegate.swift
    // didFinishLaunchingWithOptions
    //
    
    @IBAction func show(_ sender: Any) {
        AMProgressHUD.show()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            AMProgressHUD.dismiss()
        }
    }
    

}

