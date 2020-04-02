//
//  ViewController.swift
//  VeryBankAppOne
//
//  Created by Jeremy Mark on 3/30/20.
//  Copyright © 2020 Jeremy Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
}
// Added indexPath for Cells from TableView
// Source: https://youtu.be/z2y7oljRacg?t=130

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        return cell
    }
    
    
}
