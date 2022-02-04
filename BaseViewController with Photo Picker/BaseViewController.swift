//
//  BaseViewController.swift
//  BaseViewController with Photo Picker
//
//  Created by K Praveen Kumar on 04/02/22.
//

import UIKit

// This will save the image when we select from the Image picker.
typealias imageBlock = ((UIImage)->())

class BaseViewController: UIViewController{
    
    var imgBlock: imageBlock?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightText
    }
    
    func showPickerPicker(sourceType: UIImagePickerController.SourceType) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = sourceType
        imagePicker.allowsEditing = false
        return imagePicker
    }

}

extension BaseViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        dismiss(animated: true, completion: nil)
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        if self.imgBlock != nil {
            self.imgBlock!(image)
        }
    }
}
