//
//  DataManager.swift
//  TMDb application
//
//  Created by Alexander on 22.11.2021.
//

import Foundation
import RealmSwift

struct DataManager {
    
    let realm = try? Realm()

    func getMovies() -> [MovieUI] {
        
        var movies = [MovieUI]()
        
        guard let moviesResults = realm?.objects(MovieRealm.self) else { return [] }
        
        for movie in moviesResults {
            let movieUI = MovieUI(title: movie.title,
                                  popularity: movie.popularity,
                                  overview: movie.overview,
                                  id: movie.id,
                                  backdropPath: movie.backdropPath,
                                  mediaType: movie.mediaType,
                                  posterPath: movie.posterPath)
            movies.append(movieUI)
        }
        
        return movies
    }
    
    func saveMovie(movie: Movie?) {
        
        let movieRealm = MovieRealm()
        
        movieRealm.title = movie?.title ?? "No title"
        movieRealm.popularity = movie?.popularity ?? 0.0
        movieRealm.overview = movie?.overview ?? ""
        movieRealm.id = movie?.id ?? 0
        movieRealm.backdropPath = movie?.backdropPath ?? ""
        movieRealm.mediaType = movie?.mediaType ?? ""
        movieRealm.posterPath = movie?.posterPath ?? ""

        try? realm?.write {
            realm?.add(movieRealm)
        }
    }
}
