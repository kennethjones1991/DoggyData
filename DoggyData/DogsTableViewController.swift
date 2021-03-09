//
//  DogsTableViewController.swift
//  DoggyData
//
//  Created by Kenneth Jones on 3/9/21.
//

import UIKit

class DogsTableViewController: UITableViewController {
    
    let doggyController = DoggyController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        doggyController.decodeDoggyData()

        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doggyController.doggies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DoggyCell", for: indexPath)

        cell.textLabel?.text = doggyController.doggies[indexPath.row].name.capitalized

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DoggySegue" {
            if let doggyVC = segue.destination as? DoggyViewController,
               let indexPath = tableView.indexPathForSelectedRow {
                doggyVC.doggy = doggyController.doggies[indexPath.row]
            }
        }
    }

}
