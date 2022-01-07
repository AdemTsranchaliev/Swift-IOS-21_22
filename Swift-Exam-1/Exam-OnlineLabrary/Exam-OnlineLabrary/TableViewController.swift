//
//  TableViewController.swift
//  Exam-OnlineLabrary
//
//  Created by Adem Tsranchaliev on 7.01.22.
//

import UIKit

class TableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension TableViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        return cell;
    }
    
    
}
