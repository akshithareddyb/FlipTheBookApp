//
//  loginSignupViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit
import FirebaseDatabase

class loginSignupViewController: UIViewController {

    @IBOutlet weak var usernameOutlet: UITextField!
    
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    //@IBOutlet weak var homeButton: UIButton!
    
    var email = ""
    var pwd = ""
  //  var username:String?
    var usernames:[String] = []
    var profiles = NSDictionary()
    
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    
        fetchData()
    }
    
    
    func fetchData(){
        //create reference for Database.
        let databaseRef = Database.database().reference()
        databaseRef.observeSingleEvent(of: .value) { snapshot in
            self.profiles = snapshot.value as! NSDictionary //whole
            self.usernames = self.profiles.allKeys as! [String] //only the keys
            //reload the data
        
            
           // print(self.profiles)
        }
        
    }
    
    
    
    @IBAction func submitbtclicked(_ sender: UIButton) {
        email = "\(usernameOutlet.text!)"
        
    
     //   print(email)
        pwd = "\(passwordOutlet.text!)"
       // print(pwd)
        labelOutlet.isHidden = false
        for(key,value) in self.profiles{
            
            if(key as! String == "Users"){
                for (key1 , value1) in value as! [String:Any]{
                    let k = key1 + "@gmail.com"
                    if(k == email) {
                        for (key2, value2) in value1 as! [String:Any]{
                            if(key2 == "password" && value2 as! String == pwd){
                                
                               // print(username)
                                self.performSegue(withIdentifier: "homeSegue", sender: self)
                                labelOutlet.isHidden = true
                                break
                                       }
                            else{
                                labelOutlet.text = "Password did not match, Please try again!"
                            }
                        }
                        break
                    }
                    else{
                        labelOutlet.text = "Email did not match, Please try again!"
                    }
                }
                break
            }
        }

    }
    
    
                        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if "homeSegue" == segue.identifier {
            let destination = segue.destination as! homeViewController
            destination.username = email
        }
    }
    
    
    
    
    

}

