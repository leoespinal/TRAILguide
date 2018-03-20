//
//  AllCategoriesVC.swift
//  TRAILguide
//
//  Created by Leo Espinal on 3/18/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

class AllCategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var activityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityTableView.delegate = self
        activityTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getActivityCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell") as? ActivityCell {
            //Get the activity from the activity categories in the data service
            let activity = DataService.instance.getActivityCategories()[indexPath.row]
            //Update the cell according to the activity data
            cell.updateActivityCell(activity: activity)
            return cell
        } else {
            return ActivityCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let activity = DataService.instance.getActivityCategories()[indexPath.row]
        performSegue(withIdentifier: "SpecificCategoryVC", sender: activity)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let specificCategoryVC = segue.destination as? SpecificCategoryVC {
            //Replace the back button text will an empty string
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            
            //Pass Category data to specific category VC
            specificCategoryVC.initProducts(forActivity: sender as! Activity)
        }
    }
}
