//
//  AnimalsCollectionViewCell.swift
//  AnimalsParkAR
//
//  Created by Hessa on 18/02/1444 AH.
//

import UIKit

class AnimalsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var heartImage: UIImageView!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var animalName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        animalImage.layer.cornerRadius = 16    }
}
