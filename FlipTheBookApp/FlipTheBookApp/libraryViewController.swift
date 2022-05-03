//
//  libraryViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit


class libraryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return booksArray.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //create a cell
    var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
            
            //Assign the data to the cell.
    cell.imageView?.image = booksArray[indexPath.row].bookImage
    cell.imageView?.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
    cell.textLabel?.numberOfLines = 0
    cell.textLabel?.lineBreakMode = .byWordWrapping
    cell.textLabel?.font = UIFont.systemFont(ofSize: 14.0)
    cell.textLabel?.text = booksArray[indexPath.row].bookName
            //return cell
            return cell
}


@IBOutlet weak var tableViewOutlet: UITableView!

//creating an books array
var booksArray = library
override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
            tableViewOutlet.delegate = self
            tableViewOutlet.dataSource = self
            tableViewOutlet.rowHeight = 75.0
    self.title = "Library"
 // clearAllBtn(tableViewOutlet)
            
}

    @IBAction func deleteBtnClicked(_ sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: tableViewOutlet)
        guard let indexPath = tableViewOutlet.indexPathForRow(at: point)
        else
        {
        return
        }
        booksArray.remove(at: indexPath.row)
        library.remove(at: indexPath.row)
        tableViewOutlet.deleteRows(at:[IndexPath(row: indexPath.row, section: 0)], with: .left)
        tableViewOutlet.endUpdates()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let transition = segue.identifier
    if transition == "bookPDFSegue" {
        let destination = segue.destination as! BookPDFViewController
        destination.bookname = booksArray[(tableViewOutlet.indexPathForSelectedRow?.row)!].bookName
    }
        if transition == "addSegue" {
            
        }
}

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
        print("Deleted")
        self.booksArray.remove(at: indexPath.row)
          library.remove(at: indexPath.row)
        self.tableViewOutlet.deleteRows(at: [indexPath], with: .automatic)
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


@IBAction func clearAllBtn(_ sender: Any) {
    booksArray = []
    library = []
    tableViewOutlet.reloadData()
}
    
}
