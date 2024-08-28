//
//  MovieListPresenter.swift
//  MovieApp_VIPER
//
//  Created by Ozan Çiçek on 28.08.2024.
//

import Foundation


protocol MovieListPresenterProtocol: AnyObject {
    func viewDidLoad()
    func didSelectMovie(_ movie: Movie)
}

protocol MovieListViewProtocol: AnyObject {
    func showMovies(_ movies: [Movie])
}

class MovieListPresenter: MovieListPresenterProtocol {
    weak var view: MovieListViewProtocol?
    var interactor: MovieListInteractorProtocol?
    var router: MovieListRouterProtocol?
    
    func viewDidLoad() {
        interactor?.fetchMovies()
    }
    
    func didSelectMovie(_ movie: Movie) {
        router?.navigateToMovieDetail(for: movie)
    }
}

extension MovieListPresenter: MovieListInteractorOutputProtocol {
    func moviesFetched(_ movies: [Movie]) {
        view?.showMovies(movies)
    }
}
