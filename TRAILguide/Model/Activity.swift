//
//  Activity.swift
//  TRAILguide
//
//  Created by Leo Espinal on 3/18/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import Foundation

struct Activity {
    public private(set) var name: String
    public private(set) var imageName: String
    
    init(_name: String, _imageName: String) {
        self.name = _name
        self.imageName = _imageName
    }
}
