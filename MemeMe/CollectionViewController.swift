//
//  CollectionViewController.swift
//  MemeMe
//
//  Created by Mark Han on 6/8/22.
//

import Foundation
import UIKit

class CollectionViewController: UIViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    var flowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
