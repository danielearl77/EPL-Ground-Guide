//
//  TableViewController.swift
//  EPL Ground Guide
//
//  Created by Macbook Pro on 03/07/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    // MARK: Vars
    
    
    // MARK: Team List
    var Teams: [String] = ["Arsenal","Aston Villa","Bournemouth","Brentford","Brighton & Hove Albion","Burnley","Chelsea","Crystal Palace","Everton","Fulham","Leeds United","Liverpool","Manchester City","Manchester United","Newcastle United","Nottingham Forest","Sunderland","Tottenham Hotspur","West Ham United","Wolverhampton Wanderers"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = Teams[indexPath.row]
        let teamIcon: UIImage=UIImage(named: cell.textLabel!.text!)!
        cell.imageView!.image=teamIcon
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        switch(segue.identifier ?? "") {
        case "showHelp":
            NSLog("Loading Help Page")
        case "showDetail":
            let indexPath = tableView.indexPathForSelectedRow!
            let selected = indexPath.row
            let teamDetailViewController = segue.destination as? TeamViewController
            let team = Teams[selected]
            teamDetailViewController?.teamName = team
        default:
            fatalError("Unexpected Segue Identifier: \(String(describing: segue.identifier))")
        }
    }
}
