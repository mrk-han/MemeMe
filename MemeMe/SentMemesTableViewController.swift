//
//  CollectionViewController.swift
//  MemeMe
//
//  Created by Mark Han on 6/8/22.
//

import Foundation
import UIKit

class SentMemesTableViewController: UIViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
