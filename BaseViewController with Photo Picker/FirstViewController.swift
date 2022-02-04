//
//  FirstViewController.swift
//  BaseViewController with Photo Picker
//
//  Created by K Praveen Kumar on 04/02/22.
//

import UIKit

class FirstViewController: BaseViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectImageAction(_ sender: UIButton) {
        let picker = super.showPickerPicker(sourceType: .photoLibrary)
        present(picker, animated: true, completion: nil)
        super.imgBlock = { selectedImg in
            self.imageView.image = selectedImg
        }
    }
    
}
