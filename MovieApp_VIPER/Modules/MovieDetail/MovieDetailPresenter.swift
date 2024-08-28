//
//  MovieDetailPresenter.swift
//  MovieApp_VIPER
//
//  Created by Ozan Çiçek on 28.08.2024.
//

import Foundation

protocol MovieDetailPresenterProtocol: AnyObject {
    func viewDidLoad()
}

protocol MovieDetailViewProtocol: AnyObject {
    func showMovieDetails(title: String, description: String, releaseDate: String)
}

class MovieDetailPresenter: MovieDetailPresenterProtocol {
    weak var view: MovieDetailViewProtocol?
    var interactor: MovieDetailInteractorProtocol?
    var router: MovieDetailRouterProtocol?
    var movie: Movie?
    
    func viewDidLoad() {
        guard let movie = movie else { return }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        let releaseDateString = dateFormatter.string(from: movie.releaseDate)
        view?.showMovieDetails(title: movie.title, description: movie.description, releaseDate: releaseDateString)
    }
}
