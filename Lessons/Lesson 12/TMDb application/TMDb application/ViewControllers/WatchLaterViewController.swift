//
//  WatchLaterViewController.swift
//  TMDb application
//
//  Created by Alexander on 15.11.2021.
//

import UIKit

class WatchLaterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movies: [MovieUI] = []
    // Создаем объект реалм

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movies = DataManager().getMovies()
        tableView.reloadData()

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
