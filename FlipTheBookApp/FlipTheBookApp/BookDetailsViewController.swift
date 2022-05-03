//
//  BookDetailsViewController.swift
//  FlipTheBookApp
//
//  Created by Bekkari,Akshitha on 4/30/22.
//

import UIKit
import PDFKit

class BookDetailsViewController: UIViewController {

    var book : Books?
    let pdfview = PDFView()
    var bookname : String = ""
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        bookname = "\((book?.bookName)!)"
        //self.navigationController?.navigationBar.prefersLargeTitles = true
        //navigationItem.largeTitleDisplayMode = .never
        //navigationItem.title
       // UINavigationItem.LargeTitleDisplayMode = true
        self.title = bookname
        
       imageView.image = ((book?.bookImage)!)
        textView.text = "\((book?.bookInfo)!)"
        
    }
    
    @IBAction func add(_ sender: UIButton) {
       
        library.append(contentsOf: [Books(bookName: "\((book?.bookName)!)", bookImage: ((book?.bookImage)!), bookInfo: "\((book?.bookInfo)!)")])
    }
    
    @IBAction func viewButtonClicked(_ sender: UIButton) {
        pdfview.frame = view.bounds
        view.addSubview(pdfview)
        let url = Bundle.main.url(forResource: bookname, withExtension: ".pdf")
        let document = PDFDocument(url: url!)
        pdfview.document = document
    }

    @IBAction func libraryButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showLibrarySegue", sender: self)
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
