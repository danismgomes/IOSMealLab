//
//  FoodTableViewController.swift
//  FoodTableViewController
//
//  Created by Danielle Gomes on 2019-08-30.
//  Copyright © 2019 Danielle Gomes. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    var meals: [Meal] = [
        Meal(name: "Breakfast", food: [
            Food(name: "1", description: "11"),
            Food(name: "2", description: "22"),
            Food(name: "3", description: "33")
            ]),
        Meal(name: "Lunch", food: [
            Food(name: "4", description: "44"),
            Food(name: "5", description: "55"),
            Food(name: "6", description: "66")
            ]),
        Meal(name: "Dinner", food: [
            Food(name: "7", description: "77"),
            Food(name: "8", description: "88"),
            Food(name: "9", description: "99")
            ]),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
    
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let food = meals[indexPath.section].food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    

}
