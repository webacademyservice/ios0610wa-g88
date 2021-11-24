//
//  ActorCollectionViewCell.swift
//  TMDb application
//
//  Created by Alexander on 15.11.2021.
//

import UIKit
import SDWebImage

class ActorCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var actorNameLabel: UILabel!
    @IBOutlet weak var actorImageView: UIImageView!
    
    func configure(actor: Actor) {
        actorImageView.layer.cornerRadius = 50
        
        actorNameLabel.text = actor.name ?? "No name"
        
        let baseImageURL = "https://image.tmdb.org/t/p/w500"
        
        if let path = actor.profile_path {
            let imageURL = URL(string: baseImageURL + path)
            actorImageView.sd_setImage(with: imageURL, completed: nil)
        }
        
        backgroundColor = .clear
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        actorNameLabel.text = ""
        actorImageView.image = UIImage()
    }

}
