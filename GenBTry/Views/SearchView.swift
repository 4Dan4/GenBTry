//
//  SearchView.swift
//  GenBTry
//
//  Created by dan4 on 17.06.2022.
//

import UIKit
import SnapKit

class SearchView: UIViewController {

//    MARK: - Parametrs

    let scrollView = UIScrollView()
    let contentView = UIView()
    
    private lazy var searchButton: UIButton = {
            
        let button = UIButton(type: .system)
        let image = UIImage(named: "Search.png")?.withTintColor(.white)
            
        button.setBackgroundImage(image, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(searchButtAct), for: .touchUpInside)
            
        return button
            
    }()
        
    private lazy var favoriteButton: UIButton = {
            
        let button = UIButton(type: .system)
        let image = UIImage(named: "Favorite.png")?.withTintColor(.white)
            
        button.setBackgroundImage(image, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(favoriteButtAct), for: .touchUpInside)
            
        return button
            
    }()
        
    private lazy var musicButton: UIButton = {
            
        let button = UIButton(type: .system)
        let image = UIImage(named: "Music.png")?.withTintColor(.white)
            
        button.setBackgroundImage(image, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(musicButtAct), for: .touchUpInside)
            
        return button
            
    }()
        
    private lazy var shopButton: UIButton = {
            
        let button = UIButton(type: .system)
        let image = UIImage(named: "Shop.png")?.withTintColor(.white)
            
        button.setBackgroundImage(image, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(shopButtAct), for: .touchUpInside)
            
        return button
            
    }()
        
    private lazy var profileButton: UIButton = {
            
        let button = UIButton(type: .system)
        let image = UIImage(named: "Profile.png")?.withTintColor(.white)
            
        button.setBackgroundImage(image, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(profileButtAct), for: .touchUpInside)
            
        return button
            
    }()
    
    private lazy var headphonesImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Headphones.png"))
        
        return image
    }()
    
    var searchField: UITextField = {
            let field = UITextField()
            field.placeholder = "Search"
            field.borderStyle = .roundedRect
            field.clearButtonMode = UITextField.ViewMode.whileEditing
            field.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.08)
            return field
        }()
    
    var newReleases: UILabel = {
        let label = UILabel()
        label.text = "New Releases"
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .white
        
        return label
    }()
    
    var showReleasesButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.setTitle("Show All", for: .normal)
        button.setImage(UIImage(named: "Image"), for: .normal)
        
        return button
    }()
    
    var bestOfArtists: UILabel = {
        let label = UILabel()
        label.text = "Best of artists"
        label.font = . boldSystemFont(ofSize: 24)
        label.textColor = .white
        
        return label
    }()
    
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let gradient: CAGradientLayer = CAGradientLayer()

        searchField.delegate = self
        
        gradient.colors = [UIColor(red: 0.114, green: 0, blue: 0.204, alpha: 1).cgColor,
                           UIColor(red: 0.035, green: 0, blue: 0.133, alpha: 1).cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.1)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)

        self.view.layer.insertSublayer(gradient, at: 0)

        addConstraints()

        setupScrollView()
        setupViews()
        
    }
    
//    MARK: - Add constraints
    
    private func addConstraints() {
        
        view.addSubview(headphonesImage)
        headphonesImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaInsets).inset(50)
            make.left.equalToSuperview().inset(20)
        }
        
        view.addSubview(musicButton)
        musicButton.snp.makeConstraints { make in
            make.centerX.equalTo(view.center.x)
            make.bottom.equalToSuperview().inset((view.frame.height)/30)
        }
        
        view.addSubview(favoriteButton)
        favoriteButton.snp.makeConstraints { make in
            make.right.equalTo(musicButton).inset((view.frame.width)/5)
            make.bottom.equalToSuperview().inset((view.frame.height)/30)
        }
        
        view.addSubview(searchButton)
        searchButton.snp.makeConstraints { make in
            make.right.equalTo(favoriteButton).inset((view.frame.width)/5)
            make.bottom.equalToSuperview().inset((view.frame.height)/30)
        }
        
        view.addSubview(shopButton)
        shopButton.snp.makeConstraints { make in
            make.left.equalTo(musicButton).inset((view.frame.width)/5)
            make.bottom.equalToSuperview().inset((view.frame.height)/30)
        }
        
        view.addSubview(profileButton)
        profileButton.snp.makeConstraints { make in
            make.left.equalTo(shopButton).inset((view.frame.width)/5)
            make.bottom.equalToSuperview().inset((view.frame.height)/30)
        }
        
    }
    
}

