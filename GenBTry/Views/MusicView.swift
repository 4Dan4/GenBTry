//
//  MusicView.swift
//  GenBTry
//
//  Created by dan4 on 17.06.2022.
//

import UIKit
import SnapKit

class MusicView: UIViewController {

    //    MARK: - Parametrs
        
        private lazy var searchButton: UIButton = {
            
            let button = UIButton(type: .system)
            let image = UIImage(named: "Search.png")
            
            button.setBackgroundImage(image, for: UIControl.State.normal)
            button.addTarget(self, action: #selector(searchButtAct), for: .touchUpInside)
            
            return button
            
        }()
        
        private lazy var favoriteButton: UIButton = {
            
            let button = UIButton(type: .system)
            let image = UIImage(named: "Favorite.png")
            
            button.setBackgroundImage(image, for: UIControl.State.normal)
            button.addTarget(self, action: #selector(favoriteButtAct), for: .touchUpInside)
            
            return button
            
        }()
        
        private lazy var musicButton: UIButton = {
            
            let button = UIButton(type: .system)
            let image = UIImage(named: "Music.png")
            
            button.setBackgroundImage(image, for: UIControl.State.normal)
            button.addTarget(self, action: #selector(musicButtAct), for: .touchUpInside)
            
            return button
            
        }()
        
        private lazy var shopButton: UIButton = {
            
            let button = UIButton(type: .system)
            let image = UIImage(named: "Shop.png")
            
            button.setBackgroundImage(image, for: UIControl.State.normal)
            button.addTarget(self, action: #selector(shopButtAct), for: .touchUpInside)
            
            return button
            
        }()
        
        private lazy var profileButton: UIButton = {
            
            let button = UIButton(type: .system)
            let image = UIImage(named: "Profile.png")
            
            button.setBackgroundImage(image, for: UIControl.State.normal)
            button.addTarget(self, action: #selector(profileButtAct), for: .touchUpInside)
            
            return button
            
        }()
        
    
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        addConstraints()
    }

//    MARK: - Add constraints
    
    private func addConstraints() {
        
        view.addSubview(searchButton)
        searchButton.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(30)
            make.bottom.equalToSuperview().inset(25)
        }
        
        view.addSubview(favoriteButton)
        favoriteButton.snp.makeConstraints { make in
            make.left.equalTo(searchButton).inset(80)
            make.bottom.equalToSuperview().inset(25)
        }
        
        view.addSubview(musicButton)
        musicButton.snp.makeConstraints { make in
            make.left.equalTo(favoriteButton).inset(80)
            make.bottom.equalToSuperview().inset(25)
        }
        
        view.addSubview(shopButton)
        shopButton.snp.makeConstraints { make in
            make.left.equalTo(musicButton).inset(80)
            make.bottom.equalToSuperview().inset(25)
        }
        
        view.addSubview(profileButton)
        profileButton.snp.makeConstraints { make in
            make.left.equalTo(shopButton).inset(80)
            make.bottom.equalToSuperview().inset(25)
        }
        
    }
    
//    MARK: - Button actions
    
    @objc private func searchButtAct() {
        let searchVC = SearchView()
        searchVC.modalPresentationStyle = .fullScreen
        
        present(searchVC, animated: true)
    }
    
    @objc private func favoriteButtAct() {
        let favoriteVC = FavoriteView()
        favoriteVC.modalPresentationStyle = .fullScreen
        
        present(favoriteVC, animated: true)
    }
    
    @objc private func musicButtAct() {
        let musicVC = MusicView()
        musicVC.modalPresentationStyle = .fullScreen
        
        present(musicVC, animated: true)
    }
    
    @objc private func shopButtAct() {
        let shopVC = ShopView()
        shopVC.modalPresentationStyle = .fullScreen
        
        present(shopVC, animated: true)
    }
    
    @objc private func profileButtAct() {
        let profileVC = ProfileView()
        profileVC.modalPresentationStyle = .fullScreen
        
        present(profileVC, animated: true)
    }
    
}