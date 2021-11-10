//
//  MovieDetailsViewController.swift
//  TMDb
//
//  Created by Alexander on 08.11.2021.
//

import UIKit
import SDWebImage
import RealmSwift

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageURLString = ""
        if let backdropPath = self.movie?.backdropPath {
            imageURLString = "https://image.tmdb.org/t/p/w500/" + backdropPath
            let imageURL = URL(string: imageURLString)
            self.posterImageView.sd_setImage(with: imageURL, completed: nil)
        }
        
        self.titleLabel.text = movie?.title ?? "No title :)"
        self.overviewLabel.text = movie?.overview ?? "No overview"
        
        
        
        let greetings = Greetings()
        greetings.sayHello()
    }
}

class Greetings: GreetingsProtocol {
    
}

protocol GreetingsProtocol {
    func sayHello()
}

extension GreetingsProtocol {
    func sayHello() {
        print("Hello!")
    }
}


