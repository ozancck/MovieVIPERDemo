//
//  MovieListRouter.swift
//  MovieApp_VIPER
//
//  Created by Ozan Çiçek on 28.08.2024.
//

import UIKit

protocol MovieListRouterProtocol: AnyObject {
    func navigateToMovieDetail(for movie: Movie)
}

class MovieListRouter: MovieListRouterProtocol {
    weak var viewController: UIViewController?
    
    func navigateToMovieDetail(for movie: Movie) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "MovieDetailViewController") as? MovieDetailViewController {
            let presenter = MovieDetailPresenter()
            let interactor = MovieDetailInteractor()
            let router = MovieDetailRouter()
            
            detailVC.presenter = presenter
            presenter.view = detailVC
            presenter.interactor = interactor
            presenter.router = router
            interactor.output = presenter as? any MovieDetailInteractorOutputProtocol
            router.viewController = detailVC
            
            presenter.movie = movie
            
            viewController?.navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}
