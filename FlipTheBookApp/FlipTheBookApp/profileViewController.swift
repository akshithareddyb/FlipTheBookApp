//
//  profileViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit

class profileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return library.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  libraryCollectionView.dequeueReusableCell(withReuseIdentifier: "bookCollectionViewCell", for: indexPath) as! bookCollectionViewCell
                //assign movies to cell
            
           // var book = Genres[indexPath.section].books_array
        cell.assignlibBook(library[indexPath.row])
                //return to the cell
        return cell
    

    }
    

    
    
    
    var username : String?
    
    var titleStr = ["About Flip The Book","Help & support","Privacy & Settings"]
    
    var descStr = [" Flip the book is an online social reading platform intended for users to read and write original stories \n The platform allows users to write and publish stories, or just read stories generated by other users \n Although this site wholly requires an account registration to gain access to this website for mobile users in the official app, it can still be accessed via clicking the links to their user-created stories or to their account profiles.   ","Known Issues & Company Updates\n Updates, potential workarounds, and learn when an issueis raised \n IF YOU HAVE ANY PROBLEM TRY THE STEPS \n Toggle your wi-fi/data connection off and on again, or try connecting to another wi-fi network. \n Try logging out and back into your account, making sure to completely close the app.","Privacy Policy \n What is Personal Information? \n What do we collect and Why do we use it?  \n Why do we collect and use your email? \n What can other flip the book users see? \n How do we share your Personal Information? \n Where do we store your Personal Information? \n Access to your personal information \n How does flip the book protect my Personal Information? \n What happens to your Personal Information when you leave flip the book? \n Non-personal informationChanges \n How to contact us"]
    
    var profile = ["About","notifications","subscriptions","About flip the book","Help and Support"]

    @IBOutlet weak var displayNameLabel: UILabel!
    
    
    @IBOutlet weak var nameWithLibraryDisplay: UILabel!
    
    
      override func viewDidLoad() {
          super.viewDidLoad()
          
        //  img1.image = book1[0].image
        //  img2.image = book1[1].image
          libraryCollectionView.delegate = self
          libraryCollectionView.dataSource = self
          
          displayNameLabel.text = "Welcome \(username!)"
          
          nameWithLibraryDisplay.text = "\(username!)'s Library"
          
          
              
    }
    
    @IBOutlet weak var libraryCollectionView: UICollectionView!
    
    @IBAction func plusButtonPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "search") as! GenreViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func about(_ sender: Any) {
        
        let alert = UIAlertController(title: "About", message: " Logged in as \(username!)  \n Thanks for using flip the book", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Ok", style: .default) { _ in
            self.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(action1)
        present(alert, animated: true)
        
    }
    
    
    
    @IBAction func LogoutButton(_ sender: Any) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func AboutFlipTheBookButton(_ sender: Any) {
        
        
    }
    
    
    @IBAction func helpNSupportButton(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "aboutSegue"{
            let destination = segue.destination as! ResultViewController
            destination.titleStr = titleStr[0]
            destination.descStr = descStr[0]
            
        }
        if transition == "helpSegue"{
            let destination = segue.destination as! ResultViewController
            
            destination.titleStr = titleStr[1]
            destination.descStr = descStr[1]
        }
        
        if transition == "privacySegue"{
            
            let destination = segue.destination as! ResultViewController
            
            destination.titleStr = titleStr[2]
            destination.descStr = descStr[2]
        }
        if transition == "profilelibSegue" {
           
            let cell = sender as! bookCollectionViewCell
            let indexPath = libraryCollectionView.indexPath(for: cell)
           
           // let story1:[Books] = Genres[(indexPath!.section)].books_array
            let destVC = segue.destination as! BookDetailsViewController
            destVC.book = library[(indexPath?.row)!]
            
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