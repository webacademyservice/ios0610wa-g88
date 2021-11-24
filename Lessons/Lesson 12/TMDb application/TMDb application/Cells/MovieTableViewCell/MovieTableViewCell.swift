//
//  MovieTableViewCell.swift
//  TMDb application
//
//  Created by Alexander on 15.11.2021.
//

import UIKit
import SDWebImage

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var posterContainerView: UIView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.black.cgColor,
                                UIColor.clear.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = bounds
        
        gradientView.layer.insertSublayer(gradientLayer, at: 0)
        
        posterContainerView.layer.cornerRadius = 16
    }
    
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.title ?? "No title"
        movieOverviewLabel.text = movie.overview ?? "No overview"
         
        guard let posterID = movie.posterPath else { return }
        let urlString = "https://image.tmdb.org/t/p/w500" + posterID
        let posterURL = URL(string: urlString)
        posterImageView.sd_setImage(with: posterURL, completed: nil)
    }
}
