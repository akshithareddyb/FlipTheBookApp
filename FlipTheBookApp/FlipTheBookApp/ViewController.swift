//
//  ViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var viewpdfOutlet: UIButton!
    
    @IBOutlet weak var textViewDisplay: UITextView!
    
    @IBOutlet weak var addOutlet: UIButton!
    
    var dimage:UIImage?
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImage.image = dimage
    }

    @IBAction func viewpdfBtn(_ sender: Any) {
        
    }
    
    @IBAction func addBtn(_ sender: Any) {
    }
}

