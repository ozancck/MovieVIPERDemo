//
//  MovieDetailInteractor.swift
//  MovieApp_VIPER
//
//  Created by Ozan Çiçek on 28.08.2024.
//

import Foundation

protocol MovieDetailInteractorProtocol: AnyObject {
    // Add any methods needed for fetching additional movie details
}

protocol MovieDetailInteractorOutputProtocol: AnyObject {
    // Add any methods needed for receiving additional movie details
}

class MovieDetailInteractor: MovieDetailInteractorProtocol {
    weak var output: MovieDetailInteractorOutputProtocol?
    
    // Implement any methods needed for fetching additional movie details
}
