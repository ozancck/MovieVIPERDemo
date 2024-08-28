<pre>
YourProject/
├── App/
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
│   └── Info.plist
├── Models/
│   └── Movie.swift
├── Modules/
│   ├── MovieList/
│   │   ├── View/
│   │   │   └── MovieListViewController.swift
│   │   ├── Interactor/
│   │   │   └── MovieListInteractor.swift
│   │   ├── Presenter/
│   │   │   └── MovieListPresenter.swift
│   │   ├── Entity/
│   │   │   └── (empty, as we're using the shared Movie model)
│   │   └── Router/
│   │       └── MovieListRouter.swift
│   └── MovieDetail/
│       ├── View/
│       │   └── MovieDetailViewController.swift
│       ├── Interactor/
│       │   └── MovieDetailInteractor.swift
│       ├── Presenter/
│       │   └── MovieDetailPresenter.swift
│       ├── Entity/
│       │   └── (empty, as we're using the shared Movie model)
│       └── Router/
│           └── MovieDetailRouter.swift
├── Resources/
│   └── Assets.xcassets
└── Storyboards/
    └── Main.storyboard
</pre>
