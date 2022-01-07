//
//  TableViewController.swift
//  Exam-OnlineLabrary
//
//  Created by Adem Tsranchaliev on 7.01.22.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var books=BookService.GetAllBooks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
    }
    
}


extension TableViewController:UITableViewDelegate{
    
}
extension TableViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BookTVC
        
        cell.SummaryView?.text=books[indexPath.row].description
        cell.TitleView?.text=books[indexPath.row].title
        cell.AuthorView?.text=books[indexPath.row].author
        cell.ImageView.image=UIImage(named: books[indexPath.row].photo);

        
        return cell;
    }
    
    
}
