//
//  NetworkManager.swift
//  TMDb
//
//  Created by Alexander on 08.11.2021.
//

import Foundation
import Alamofire

struct NetworkManager {
    
    static let shared = NetworkManager()
    
    private init(){ }
    
    func requestTrendingMovies(completion: @escaping(([Movie]) -> ())) {
  
        let url = "https://api.themoviedb.org/3/trending/series/day?api_key=96cfbe0ba15c4721bca8030e8e32becb"
        
        AF.request(url).responseJSON { responce in

            let decoder = JSONDecoder()
            
            if let data = try? decoder.decode(JSONResponce.self, from: responce.data!) {
                let movies = data.results ?? []
                completion(movies)
            }
        }
    }
}
