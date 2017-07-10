//
//  AirlineListTableViewController.swift
//  mshao Greater China Region Airline List
//
//  Created by Mingfei Shao on 3/3/17.
//  Copyright © 2017 Mingfei Shao. All rights reserved.
//

import UIKit

class AirlineListTableViewController: UITableViewController {
    @IBOutlet weak var sortButton: UIButton!
    
    var sortState: Int = 0

    @IBAction func sortButtonPressed(_ sender: UIButton) {
        switch sortState {
        case 0:
            sender.setTitle("Ordered by: Name", for: .normal)
            airlines = airlines.sorted{ $0.name < $1.name }
            self.tableView.reloadData()
        case 1:
            sender.setTitle("Ordered by: Type", for: .normal)
            airlines = airlines.sorted{ $0.type.rawValue < $1.type.rawValue }
            self.tableView.reloadData()
        case 2:
            sender.setTitle("Ordered by: Country/Region", for: .normal)
            airlines = airlines.sorted{ $0.country.rawValue < $1.country.rawValue }
            self.tableView.reloadData()
        default:
            return
        }
        
        sortState += 1
        if sortState > 2 {
            sortState = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sortButtonPressed(sortButton)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let staticDetailTableViewController = segue.destination as? StaticDetailTableViewController
            else { return }
        guard let indexPath = self.tableView.indexPathForSelectedRow
            else { return }
        staticDetailTableViewController.airline = airlines[indexPath.row]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return airlines.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let airline = airlines[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: airline.type.rawValue, for: indexPath) as! AirlineListTableViewCell

        // Configure the cell...
        cell.titleLabel?.text = airline.name
        cell.logoImageView?.image = UIImage(named: airline.iataCode)
        cell.countryImageView?.image = UIImage(named: airline.country.rawValue)
        return cell
    }
 
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let airline = airlines[indexPath.row]
        let title = "Basic Information"
        let message = airline.description
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        alertController.addAction(dismissAction)
        present(alertController, animated: true, completion: nil)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }

}
