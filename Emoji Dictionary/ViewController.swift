//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Pujita Tipnis on 1/19/17.
//  Copyright © 2017 Pujita Tipnis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    var emojiArray : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojiArray = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojiArray[indexPath.row]
        cell.textLabel?.text = emoji.emojiIcon
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "moveSegue", sender: emojiArray[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scrn2VC = segue.destination as! Screen2ViewController
        scrn2VC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.createEmoji(emojiIcon1: "😊", definition1: "A smiling face", category1: "Smiley", creationYear1: 2009)
        
        let emoji2 = Emoji()
        emoji2.createEmoji(emojiIcon1: "🙁", definition1: "A sad face", category1: "Smiley", creationYear1: 2016)
        
        let emoji3 = Emoji()
        emoji3.createEmoji(emojiIcon1: "😍", definition1: "A smiley with heart eyes", category1: "Smiley", creationYear1: 2009)

        let emoji4 = Emoji()
        emoji4.createEmoji(emojiIcon1: "🐶", definition1: "A cute hamster", category1: "Animal", creationYear1: 2011)
        
        let emoji5 = Emoji()
        emoji5.createEmoji(emojiIcon1: "💩", definition1: "Poop! Gross!", category1: "Smiley", creationYear1: 2012)
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }
}

