//
//  booksViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/7/22.
//

import UIKit

class BooksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = bookTableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = .byWordWrapping
        cell.textLabel?.font = UIFont.systemFont(ofSize: 14.0)
        cell.textLabel?.text = books[indexPath.row].bookName
        return cell
    }
    
    
   
    @IBOutlet weak var bookTableView: UITableView!
    
    var genre : Genre?
    var books : [Books] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bookTableView.delegate = self
        bookTableView.dataSource = self
        books = ((genre?.books_array)!)
        self.title = "\((genre?.genreName)!)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "bookGenreSegue" {
            let destination = segue.destination as! BookDetailsViewController
            
            destination.book = books[(bookTableView.indexPathForSelectedRow?.row)!]
        }
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
