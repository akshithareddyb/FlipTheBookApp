//
//  searchViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit

class Genres{
    var genreName : String?
    var books: [String]?
    init(genreName: String, books: [String]){
        self.genreName = genreName
        self.books = books
    }
    
}

class searchViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        
        cell.textLabel?.text = genre[indexPath.row].genreName
        
        return cell
    }
    
    var genre = [Genres]()
    
    @IBOutlet weak var searchBarfield: UISearchBar!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        let genre1 = Genres(genreName: "Fiction", books: ["Pride and Prejudice","The Girl in Ice","Nothing Lasts Forever"])
        genre.append(genre1)
        let genre2 = Genres(genreName: "Biography", books: ["wings of Fire","Steve Jobs: The Life, Lessons & Rules for Success","A Promised Land"])
        genre.append(genre2)
        let genre3 = Genres(genreName: "Comedy", books: ["Grown Ups","Scoop","My Lifey"])
        genre.append(genre3)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "booksSegue" {
                let destination = segue.destination as! booksViewController
                
                destination.book = "I'm working!"
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
