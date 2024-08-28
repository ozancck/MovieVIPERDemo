//
//  MovieListInteractor.swift
//  MovieApp_VIPER
//
//  Created by Ozan Çiçek on 28.08.2024.
//

import Foundation

protocol MovieListInteractorProtocol: AnyObject {
    func fetchMovies()
}

protocol MovieListInteractorOutputProtocol: AnyObject {
    func moviesFetched(_ movies: [Movie])
}

class MovieListInteractor: MovieListInteractorProtocol {
    weak var output: MovieListInteractorOutputProtocol?
    
    func fetchMovies() {
        // In a real app, you would fetch movies from an API or database
        let movies = [
            Movie(id: 1, title: "Movie 1", description: "Description 1", releaseDate: Date()),
            Movie(id: 2, title: "Movie 2", description: "Description 2", releaseDate: Date()),
            Movie(id: 3, title: "Movie 3", description: "Description 3", releaseDate: Date())
        ]
        output?.moviesFetched(movies)
    }
}
