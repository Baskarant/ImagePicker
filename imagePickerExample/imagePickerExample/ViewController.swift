//
//  ViewController.swift
//  imagePickerExample
//
//  Created by Baskaran T on 11/12/16.
//  Copyright © 2016 Baskaran T. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate ,UINavigationControllerDelegate {
    
    @IBOutlet weak var imagePickerView: UIImageView!
    @IBOutlet weak var cameraBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cameraBtn.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }

    @IBAction func pickImage(_ sender: AnyObject) {
       /* let pickerController = UIImagePickerController()
        self.present(pickerController, animated: true, completion: nil) */
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imagePickerView.contentMode = .scaleAspectFit
            imagePickerView.image = image
            dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func pickFromCamera(_ sender: AnyObject) {
        let imageCpicker = UIImagePickerController()
        imageCpicker.delegate = self
        imageCpicker.sourceType = .camera
        present(imageCpicker, animated: true, completion: nil)
    }
    
    
    
}

