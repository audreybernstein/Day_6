//
//  FruitTableTableViewController.swift
//  TablePractice
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

struct Fruit {
    var id: Int
    var title : String
    var text : String
    var image : String
}

class FruitTableTableViewController: UITableViewController {
    var allFruit = [
    Fruit(id: 1, title: "Mango", text: "A yellow, yummy fruit!", image: "mango"),
    Fruit(id: 2, title: "Grapes", text: "A small, circular fruit that is either purple or green.", image: "grapes"),
    Fruit(id:3, title: "Strawberry", text: "A red, delicious fruit", image: "red-strawberry")]
    override func viewDidLoad() {
      
    }
  

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allFruit.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

      cell.textLabel?.text = allFruit[indexPath.row].title

        return cell
    }
 override func tableView(_ tableview: UITableView, titleForHeaderInSection section: Int)->String? {
        
        return"Section\(section)"
    }
   
}


