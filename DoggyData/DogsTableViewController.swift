//
//  DogsTableViewController.swift
//  DoggyData
//
//  Created by Kenneth Jones on 3/9/21.
//

import UIKit

class DogsTableViewController: UITableViewController {
    
    @IBOutlet weak var sortButton: UIBarButtonItem!
    
    let doggyController = DoggyController()
    var sortById = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        doggyController.decodeDoggyData()

        tableView.reloadData()
    }
    
    @IBAction func changeSort(_ sender: Any) {
        sortById = !sortById
        
        if sortById {
            sortButton.image = UIImage(systemName: "a")
            doggyController.sortById()
        } else {
            sortButton.image = UIImage(systemName: "list.number")
            doggyController.sortByName()
        }
        
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
