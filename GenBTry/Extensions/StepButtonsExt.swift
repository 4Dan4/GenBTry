//
//  StepButtonsExt.swift
//  GenBTry
//
//  Created by dan4 on 18.06.2022.
//

import UIKit

extension UIViewController {
    
    //    MARK: - Button actions
        
        @objc func searchButtAct() {
            let searchVC = SearchView()
            searchVC.modalPresentationStyle = .fullScreen
            
            present(searchVC, animated: true)
        }
        
        @objc func favoriteButtAct() {
            let favoriteVC = FavoriteView()
            favoriteVC.modalPresentationStyle = .fullScreen
            
            present(favoriteVC, animated: true)
        }
        
        @objc func musicButtAct() {
            let musicVC = MusicView()
            musicVC.modalPresentationStyle = .fullScreen
            
            present(musicVC, animated: true)
        }
        
        @objc func shopButtAct() {
            let shopVC = ShopView()
            shopVC.modalPresentationStyle = .fullScreen
            
            present(shopVC, animated: true)
        }
        
        @objc func profileButtAct() {
            let profileVC = ProfileView()
            profileVC.modalPresentationStyle = .fullScreen

            present(profileVC, animated: true)
        }
        
}
