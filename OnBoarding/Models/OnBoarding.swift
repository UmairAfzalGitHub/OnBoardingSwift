//
//  OnBoarding.swift
//  OnBoarding
//
//  Created by Umair Afzal on 03/02/2019.
//  Copyright © 2019 Umair Afzal. All rights reserved.
//

import Foundation
import UIKit

class OnBoarding {
    
    var topImage = UIImage()
    var heading = ""
    var description = ""
    
    init(image: UIImage, heading: String, description: String) {
        topImage = image
        self.heading = heading
        self.description = description
    }
}
