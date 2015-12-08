//
//  TravelPackage.swift
//  TripCard
//
//  Created by abdul on 8/12/15.
//  Copyright (c) 2015 dhlab's. All rights reserved.
//

import Foundation
import UIKit

class Trip {
    var tripId = ""
    var city = ""
    var country = ""
    var featuredImage:UIImage?
    var price:Int = 0
    var totalDays:Int = 0
    var isLiked = false
    
    init(tripId: String, city: String, country: String, featuredImage: UIImage!, price: Int, totalDays: Int, isLiked: Bool) {
        self.tripId = tripId
        self.city = city
        self.country = country
        self.featuredImage = featuredImage
        self.price = price
        self.totalDays = totalDays
        self.isLiked = isLiked
    }
    
}