//
//  ViewController.swift
//  ImageFliter
//
//  Created by Amr El-Fiqi on 06/03/2023.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var intensity: UISlider!
    
    var currentImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
    }

    // MARK: - UI Items Method
    
    @IBAction func changeFliter(_ sender: Any) {
    }
    
    @IBAction func intensityChanged(_ sender: Any) {
    }
    
    @IBAction func save(_ sender: Any) {
    }
    
    // MARK: - Class Methods
    
    func setupNavigation(){
        title = "YACIFP"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importImages))
    }
    
    @objc func importImages(){
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    // MARK: - ImagePickerController Delegate Methods
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else {return}
        dismiss(animated: true)
        currentImage = image
    }
}

