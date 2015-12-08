//
//  TripCollectionCell.swift
//  TripCard
//
//  Created by abdul on 8/12/15.
//  Copyright (c) 2015 dhlab's. All rights reserved.
//

import UIKit

protocol TripCollectionCellDelegate {
    func didLikeButtonPressed(cell: TripCollectionCell)
}

class TripCollectionCell: UICollectionViewCell {
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var cityLabel:UILabel!
    @IBOutlet weak var countryLabel:UILabel!
    @IBOutlet weak var totalDaysLabel:UILabel!
    @IBOutlet weak var priceLabel:UILabel!
    @IBOutlet weak var likeButton:UIButton!
    
    var isLike:Bool = false  {
        didSet {
            if isLike {
                likeButton.setImage(UIImage(named: "heartfull"), forState: .Normal)
            } else {
                likeButton.setImage(UIImage(named: "heart"), forState: .Normal)
            }
        }
    }
    var delegate:TripCollectionCellDelegate?
 
    
    @IBAction func likeButtonTapped(sender: AnyObject) {
        delegate?.didLikeButtonPressed(self)
    }

}

