//
//  CustomCell.swift
//  TRAILguide
//
//  Created by Leo Espinal on 3/18/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

class ActivityCell: UITableViewCell {
    @IBOutlet weak var activityImage: UIImageView!
    @IBOutlet weak var activityName: UILabel!
    
    func updateActivityCell(activity: Activity) {
        activityImage.image = UIImage(named: activity.imageName)
        activityName.text = activity.name
    }
}
