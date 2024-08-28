//
//  MovieListViewController.swift
//  MovieApp_VIPER
//
//  Created by Ozan Çiçek on 28.08.2024.
//

import UIKit


class MovieListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: MovieListPresenterProtocol?
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        presenter?.viewDidLoad()
    }
}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        presenter?.didSelectMovie(movie)
    }
}

extension MovieListViewController: MovieListViewProtocol {
    func showMovies(_ movies: [Movie]) {
        self.movies = movies
        tableView.reloadData()
    }
}
