//
//  NavBarController.swift
//  Ditto
//
//  Created by Candace Chiang on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.isTranslucent = false
        self.navigationBar.setValue(true, forKey: "hidesShadow")
        self.navigationBar.barTintColor = .white
        self.navigationBar.tintColor = UIColor(hexString: "#BF95DC")
        UIBarButtonItem.appearance()
            .setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Roboto-Regular", size: 14.0)!], for: .normal)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}