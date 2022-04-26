//
//  ViewController.swift
//  Malipatlola_RestaurantApp
//
//  Created by Malipatlola,Abhilash Reddy on 4/26/22.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return restarantArray.count
        }
        
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                    cell.textLabel?.text = restarantArray[indexPath.row].name
                    return cell
        }
        

    @IBOutlet weak var tableView: UITableView!
        
        
        
        var restarantArray = restaurants
        
        var items : Restarant?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            tableView.delegate = self
            tableView.dataSource = self
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let transition = segue.identifier
                if transition == "RestSegue"{
                    let destination = segue.destination as! RestaurantDetailsViewController
                    destination.items = restarantArray[tableView.indexPathForSelectedRow!.row].details

                }
            }
}

