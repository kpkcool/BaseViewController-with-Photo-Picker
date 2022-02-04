//
//  SecondViewController.swift
//  BaseViewController with Photo Picker
//
//  Created by K Praveen Kumar on 04/02/22.
//

import UIKit

class SecondViewController: BaseViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectImageAction(_ sender: UIButton) {
        let picker = super.showPickerPicker(sourceType: .photoLibrary)  // Here super is written to call the parent vc's function. If self was written then, the compiler will search in the same class. if not found then will go to parent class
        present(picker, animated: true, completion: nil)
        super.imgBlock = { selectedImg in
            self.imageView.image = selectedImg
        }
    }
    

}
