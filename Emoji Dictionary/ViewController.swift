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
    let emojiArray = ["😊", "🙁", "😍","🐶", "💩"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "moveSegue", sender: emojiArray[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scrn2VC = segue.destination as! Screen2ViewController
        scrn2VC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

