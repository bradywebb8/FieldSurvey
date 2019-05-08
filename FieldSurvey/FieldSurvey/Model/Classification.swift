//
//  Classification.swift
//  FieldSurvey
//
//  Created by Brady Webb on 5/3/19.
//  Copyright © 2019 Brady Webb. All rights reserved.
//

import UIKit

enum Classification: String{
    case bird
    case amphibian
    case reptile
    case insec
    case plant
    case mammal
    case fish
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
