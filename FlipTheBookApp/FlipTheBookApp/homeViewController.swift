//
//  homeControllerViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit

class homeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return toppicks.count
    }
    
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell:bookCollectionViewCell =  bookCollectionView.dequeueReusableCell(withReuseIdentifier: "bookCollectionViewCell", for: indexPath) as? bookCollectionViewCell
                //assign movies to cell
        {
            
           // var book = Genres[indexPath.section].books_array
            cell.assignBook(toppicks[indexPath.row])
                //return to the cell
                  return cell
        }
        return UICollectionViewCell()
    }
    
    let bookgenre = Genres
    var username : String = ""
    
    
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet weak var bookCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bookCollectionView.delegate = self
        bookCollectionView.dataSource = self
        let components = username.components(separatedBy: "@")
        username = components[0]
       // print(username)
        helloLabel.text = "Hello " + username.uppercased() + " ,"
        
    }
    
    
    
    @IBAction func searchBtn(_ sender: Any) {
       
    }
    
    @IBAction func librarybtn(_ sender: Any) {
       
    }
    
   
    
    @IBAction func ProfileBtn(_ sender: Any) {
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      //  let story = bookCollectionView.indexPathsForSelectedItems
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "viewSegue" {
           
            let cell = sender as! bookCollectionViewCell
            let indexPath = bookCollectionView.indexPath(for: cell)
           
           // let story1:[Books] = Genres[(indexPath!.section)].books_array
            let destVC = segue.destination as! BookDetailsViewController
            destVC.book = toppicks[(indexPath?.row)!]
            
        }
        if transition == "profileSegue" {
            //let cell = sender as! bookCollectionViewCell
           // let indexPath = bookCollectionView.indexPath(for: cell)
           
           // let story1:[Books] = Genres[(indexPath!.section)].books_array
            let destVC = segue.destination as! profileViewController
            destVC.username = username
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
