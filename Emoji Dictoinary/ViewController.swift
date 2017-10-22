//
//  ViewController.swift
//  Emoji Dictoinary
//
//  Created by Eugenio Casanova on 10/21/17.
//  Copyright © 2017 Eugenio Casanova. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mytableview: UITableView!
    
    var emojis = ["😆","😅","💩","😍","👾","👩‍🏫","🐔","🦋","🦄","🌴","🍒","☃️","☎️","🔔"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        mytableview.dataSource = self
        mytableview.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]  // fill cells with is
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

