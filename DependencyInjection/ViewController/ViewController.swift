//
//  ViewController.swift
//  Shared
//
//  Created by Adilson Junior on 27/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    
    let tableView = UITableView()
    var data = [EmailAccount]()
    
    override func viewDidLoad() {
        view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        data = getModels()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func getModels() -> [EmailAccount] {
        return [Gmail(), ICloud(), Outlook()]
    }
}

// MARK: TableView settings

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                 for: indexPath)
        let account = data[indexPath.row]
        cell.textLabel?.text = "\(account.username) - \(account.domain)"
        
        return cell
    }
}
