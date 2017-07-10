//
//  StaticDetailTableTableViewController.swift
//  mshao Greater China Region Airline List
//
//  Created by Mingfei Shao on 3/4/17.
//  Copyright © 2017 Mingfei Shao. All rights reserved.
//

import UIKit

class StaticDetailTableViewController: UITableViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var foundedLabel: UILabel!
    @IBOutlet weak var iataLabel: UILabel!
    @IBOutlet weak var icaoLabel: UILabel!
    @IBOutlet weak var callsignLabel: UILabel!
    @IBOutlet weak var hubTableView: UITableView!
    @IBOutlet weak var focusCityTableView: UITableView!
    @IBOutlet weak var fleetSizeLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var staticTableView: UITableView!
    
    var airline: Airline?
    
    override func viewWillAppear(_ animated: Bool) {
        if let a = airline {
            nameLabel.text = a.name
            countryLabel.text = a.country.rawValue
            flagImageView.image = UIImage(named: a.country.rawValue)
            switch a.type.rawValue {
                case "fullservice":
                typeLabel.text = "Full-service"
                case "lowcost":
                typeLabel.text = "Low-cost"
                case "cargo":
                typeLabel.text = "Cargo"
            default:
                typeLabel.text = ""
            }
            iataLabel.text = a.iataCode
            icaoLabel.text = a.icaoCode
            
            let hubDataSource = HubDataSource(data: a.hub)
            hubTableView.delegate = hubDataSource
            hubTableView.dataSource = hubDataSource
            
            let focusDataSource = FocusDataSource(data: a.focus)
            focusCityTableView.delegate = focusDataSource
            focusCityTableView.dataSource = focusDataSource
            
            foundedLabel.text = String(a.founded)
            callsignLabel.text = a.callsign
            fleetSizeLabel.text = String(a.fleetSize)
            websiteLabel.text = a.website
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if indexPath.row == 7 {
                let count = (airline?.hub.count)! * 44
                return CGFloat(count)
            }
            else if indexPath.row == 8 {
                let count = (airline?.focus.count)! * 44
                return CGFloat(count)
            } else {
                return 44
            }
    }
    
    // MARK: - Table view data source
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//    
//    
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        if tableView == hubTableView{
//            return (airline?.hub.count)!
//        } else if tableView == focusCityTableView{
//            return (airline?.focus.count)!
//        } else {
//            return 11
//        }
//        
//    }
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
