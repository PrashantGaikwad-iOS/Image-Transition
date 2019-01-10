//
//  ViewController.swift
//  Image Transition
//
//  Created by Prashant G on 1/10/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var segmentControl: UISegmentedControl!
    
    let imageArray = ["food","nature","sports"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func segmentControlChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            updateImage(atIndex:0)
        }
        else if sender.selectedSegmentIndex == 1 {
            updateImage(atIndex:1)
        }
        else {
            updateImage(atIndex:2)
        }
    }
    
    func updateImage(atIndex index:Int) {
        UIView.transition(with: imageView, duration: 1, options: [.transitionCurlDown], animations: {
            self.imageView.image = UIImage(named: self.imageArray[index])
        })
    }
    
}

