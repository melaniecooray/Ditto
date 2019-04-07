//
//  NewPlaylistViewController.swift
//  Ditto
//
//  Created by Sam Lee on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

class NewPlaylistViewController: UIViewController, UITextFieldDelegate {
    
    var newPlaylistTextField: UITextField!
    
    var imageView: UIImageView!
    var imagePicker: UIButton!
    
    var chosenImage: UIImage!
    
    var createButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red:0.45, green:0.51, blue:0.77, alpha:1.0)
        
        newPlaylistSetUp()
        setUpImagePicker()

        // Do any additional setup after loading the view.
    }
    
    @objc func createButtonClicked() {
        performSegue(withIdentifier: "toCreatePlaylist", sender: self)
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
