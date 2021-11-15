//
//  WatchLaterViewController.swift
//  TMDb application
//
//  Created by Alexander on 15.11.2021.
//

import UIKit
import RealmSwift

class WatchLaterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var movies: [MovieRealm] = []
    // Создаем объект реалм
    let realm = try? Realm()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.movies = self.getMovies()
        tableView.reloadData()
    }

    func getMovies() -> [MovieRealm] {

        var movies = [MovieRealm]()
        guard let citiesResults = realm?.objects(MovieRealm.self) else { return [] }
        for movie in citiesResults {
            movies.append(movie)
        }
        return movies
    }

}

// MARK: - Delegates

extension WatchLaterViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = movies[indexPath.row].title
        return cell
    }
    
    
}
