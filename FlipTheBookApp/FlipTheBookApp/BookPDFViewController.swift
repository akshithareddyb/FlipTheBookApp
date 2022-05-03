//
//  BookPDFViewController.swift
//  FlipTheBookApp
//
//  Created by Bekkari,Akshitha on 4/30/22.
//

import UIKit
import PDFKit

class BookPDFViewController: UIViewController {

    var bookname = ""
    let pdfview = PDFView()
    override func viewDidLoad() {

        super.viewDidLoad()
        
        pdfview.frame = view.bounds
        view.addSubview(pdfview)
        let url = Bundle.main.url(forResource: bookname, withExtension: ".pdf")
        let document = PDFDocument(url: url!)
        pdfview.document = document

        // Do any additional setup after loading the view.
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
