//
//  MovieDetailViewController.swift
//  MovieApp_VIPER
//
//  Created by Ozan Çiçek on 28.08.2024.
//

import UIKit

class MovieDetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    var presenter: MovieDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension MovieDetailViewController: MovieDetailViewProtocol {
    func showMovieDetails(title: String, description: String, releaseDate: String) {
        titleLabel.text = title
        descriptionLabel.text = description
        releaseDateLabel.text = releaseDate
    }
}
