//
//  ActorCollectionViewCell.swift
//  TMDb application
//
//  Created by Alexander on 15.11.2021.
//

import UIKit

class ActorCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    
    func configure() {
        containerView.backgroundColor = .green
        containerView.layer.cornerRadius = 50
    }

}
