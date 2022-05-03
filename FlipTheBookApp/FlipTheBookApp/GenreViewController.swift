//
//  searchViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit



class GenreViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = genreTableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = .byWordWrapping
        cell.textLabel?.font = UIFont.systemFont(ofSize: 14.0)
        cell.textLabel?.text = genres[indexPath.row].genreName
        return cell
    }
    

    @IBOutlet weak var genreTableView: UITableView!
    
    @IBOutlet weak var searchField: UITextField!
    
    var bookname = ""
    var searchBook : Books?
    var genres : [Genre] = Genres
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        genreTableView.delegate = self
        genreTableView.dataSource = self
        self.title = "Explore Different Genre's"
    }
    
    
    
    @IBAction func searchBook(_ sender: UITextField) {
        bookname = "\(searchField.text!)"
        print(bookname)
        for gen in Genres {
            for book in gen.books_array {
                
                if(bookname == book.bookName){
                    print("Actual book name id\(book.bookName)")
                    searchBook = Books(bookName: bookname, bookImage: book.bookImage, bookInfo: book.bookInfo)
                    self.performSegue(withIdentifier: "searchBookSegue", sender: self)
                    
                }
            }
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        //print("hello")
        //print(transition)
        if transition == "bookSegue"{
            let destination = segue.destination as! BooksViewController
           
            destination.genre = genres[(genreTableView.indexPathForSelectedRow?.row)!]
        }
        if transition == "searchBookSegue" {
            let destination = segue.destination as! BookDetailsViewController
           
            destination.book = searchBook
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
