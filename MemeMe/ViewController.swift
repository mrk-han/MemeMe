//
//  ViewController.swift
//  MemeMe
//
//  Created by Mark Han on 3/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var topTextField: UITextField!
    @IBOutlet var bottomTextField: UITextField!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Saving Meme
    
    func save() {
        // Create the meme
        let meme = Meme(topText: topTextField.text!, bottomText: bottomTextField.text!, originalImage: imageView.image!, memedImage: generateMemedImage())
    }
    
    func generateMemedImage() -> UIImage {
        
        // TODO: Hide toolbar and navbar
        
        // Render view to an image
        UIGraphicsBeginImageContext(self.view.frame.size)
        view.drawHierarchy(in: self.view.frame, afterScreenUpdates: true)
        let memedImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        // TODO: Show toolbar and navbar
        
        return memedImage
    }
    
    // MARK: Sharing Meme
    
    // TODO: Enable/Disable Share if user has meme or
    
    /*
     Share func IBACTION probably:
     
     - generate a memed image
     - define an instance of the ActivityViewController
     - pass the ActivityViewController a memedImage as an activity item
     - present the ActivityViewController
     - call completionWithItemsHandler from UIActivityViewController class
       - call save meme in handler
     - dismiss activity view
     */
    
}

