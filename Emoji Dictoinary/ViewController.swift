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
    
    var emojis : [Emoji] = []
        
        //["😆","😅","💩","😍","👾","👩‍🏫","🐔","🦋","🦄","🌴","🍒","☃️","☎️","🔔"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        mytableview.dataSource = self
        mytableview.delegate = self
        emojis = makeEmojiArray()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji  // fill cells with is
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
        func makeEmojiArray() -> [Emoji] {
            let emoji1 = Emoji()
            emoji1.stringEmoji = "🔔"
            emoji1.birthYear = 2010
            emoji1.category = "Equipment"
            emoji1.definition = "This ia a bell"
            
            let emoji2 = Emoji()
            emoji2.stringEmoji = "💩"
            emoji2.birthYear = 2011
            emoji2.category = "Smiley"
            emoji2.definition = "This ia pooph"
            
            let emoji3 = Emoji()
            emoji3.stringEmoji = "🦋"
            emoji3.birthYear = 2009
            emoji3.category = "Animal"
            emoji3.definition = "This ia a butterfly"
            
            return [emoji1, emoji2, emoji3]
            
        }
}

