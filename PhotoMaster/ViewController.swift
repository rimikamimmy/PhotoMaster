//
//  ViewController.swift
//  PhotoMaster
//
//  Created by Rimika Inoguchi on 2018/04/13.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTappedCameraButton(){
    }
    
    @IBAction func onTappedAlbumButton(){
    }
    
    func presentPickerController (sourceType: UIImagePickerControllerSourceType){
        if UIImagePickerController.isSourceTypeAvailable(sourceType){
            let picker = UIImagePickerController()
            picker.sourceType = sourceType
            picker.delegate = self
            self.present(picker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any { self.dismiss(animated: true, completion: nil)
        
        photoImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
    }
    @IBAction func onTappedCameraButton(){
        presentPickerController(sourceType:  .camera)
    }
    @IBAction func onTappedAlbumButton(){
        presentPickerController(sourceType:  .photoLibrary)
    }
}



