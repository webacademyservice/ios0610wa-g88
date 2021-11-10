//
//  TrendingMovieTableViewCell.swift
//  TMDb
//
//  Created by Alexander on 08.11.2021.
//

import UIKit
import SDWebImage

class TrendingMovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var moviePosterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
    }
    
    func configureWith(_ item: Movie) {
        
        movieTitleLabel.text = item.originalTitle
        
        var imageURLString = ""
        if let backdropPath = item.backdropPath {
            imageURLString = "https://image.tmdb.org/t/p/w500/" + backdropPath
            let imageURL = URL(string: imageURLString)
            moviePosterImageView.sd_setImage(with: imageURL, completed: nil)
        }
    }
}
