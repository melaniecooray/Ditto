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
    
    var blueBackground: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        newPlaylistSetUp()
        setUpImagePicker()
        self.navigationController?.navigationBar.isHidden = false
        addTapDismiss()
        //self.navigationController?.navigationBar.barTintColor = UIColor(red:0.45, green:0.51, blue:0.77, alpha:1.0)
        //self.navigationController?.navigationItem.leftBarButtonItem?.tintColor = .black
        //self.navigationController?.navigationBar.isTranslucent = true
        //self.navigationController?.view.backgroundColor = UIColor(red:0.45, green:0.51, blue:0.77, alpha:1.0)

        // Do any additional f setup after loading the view.
    }
    
    @objc func createButtonClicked() {
        performSegue(withIdentifier: "toCreatePlaylist", sender: self)
    }
    
    func addTapDismiss() {
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard)))
    }
    @objc func dismissKeyboard() {
        newPlaylistTextField.resignFirstResponder()
    }
}
