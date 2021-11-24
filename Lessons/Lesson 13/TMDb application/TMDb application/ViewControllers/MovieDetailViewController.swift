//
//  MovieDetailViewController.swift
//  TMDb application
//
//  Created by Alexander Slobodjanjuk on 26.07.2021.
//

import UIKit
import SDWebImage
import youtube_ios_player_helper
import Alamofire

class MovieDetailViewController: UIViewController {
    
    /// Аутлеты (IBOutlet) - все, что мы перетянули из main.storyboard
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var videoPlayerView: YTPlayerView!
    
    /// Переменная, которая нам нужна, чтобы в этот контроллер можно было передать объект Movie
    var movie: Movie? = nil

    /// Часть URL для загрузки картинок. URL для загрузки любой картинки начинается с этой строки.
    let baseImageURL = "https://image.tmdb.org/t/p/original/"

    //MARK: - Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        // Метод вызвался сразу при открытии контроллера. Мы указываем значения текста для detailLabel
        self.detailLabel.text = self.movie?.overview

        // И загружаем картинку в posterImageView. Если мы можем достать poster_path из объекта Movie
        if let posterPath = self.movie?.posterPath {

            // Тогда создадим полную ссылку на картинку
            let urlString = self.baseImageURL + posterPath

            // И с помощью библиотеки SDWebImage задаем posterImageView картинку, загруженную по url
            self.posterImageView.sd_setImage(with: URL(string: urlString), completed: nil)
        }
        
        guard let id = movie?.id else { return }
        requestVideoDetails(id) { videos in
            guard let key = videos.first?.key else { return }
             
            self.videoPlayerView.load(withVideoId: key)

        }
    }
    
    func requestVideoDetails(_ id: Int, completion: @escaping(([VideoResults]) -> ())) {
        let url = "https://api.themoviedb.org/3/movie/\(id)/videos?api_key=5d24ad36a0d98c3987c8768e13053416"
        AF.request(url).responseJSON { responce in
            let decoder = JSONDecoder()
            guard let responceData = responce.data else { return }
            guard let data = try? decoder.decode(JSONVideo.self, from: responceData) else  { return }
            guard let videos = data.results else { return }
            completion(videos)
        }
    }

    @IBAction func addToListButtonPressed(_ sender: Any) {
        DataManager().saveMovie(movie: self.movie)
    }
}
