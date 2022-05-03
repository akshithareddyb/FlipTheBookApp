//
//  ResultViewController.swift
//  FlipTheBookApp
//
//  Created by student on 5/1/22.
//

import UIKit

class ResultViewController: UIViewController {

    var titleStr : String?
    
    var descStr : String?
    
    @IBOutlet weak var headingOutlet: UILabel!
    
    
    
    @IBOutlet weak var descOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headingOutlet.text = "\(titleStr!)"
        descOutlet.text = "\(descStr!)"
    }

}
