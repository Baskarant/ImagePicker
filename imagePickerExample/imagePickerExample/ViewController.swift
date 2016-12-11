//
//  ViewController.swift
//  imagePickerExample
//
//  Created by Baskaran T on 11/12/16.
//  Copyright © 2016 Baskaran T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagePickerView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pickImage(_ sender: AnyObject) {
        
        let pickerController = UIImagePickerController()
        self.present(pickerController, animated: true, completion: nil)
    
    }

}

