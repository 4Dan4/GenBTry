//
//  ScrollViewExt.swift
//  GenBTry
//
//  Created by dan4 on 18.06.2022.
//

import UIKit
import SnapKit

extension SearchView {
    
    func setupScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
            
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
            
        scrollView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(80)
            make.left.right.equalToSuperview().inset(5)
            make.bottom.equalToSuperview().inset(65)
        }
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    
    }
        
        func setupViews(){
            
            contentView.addSubview(searchField)
            searchField.snp.makeConstraints { make in
                make.top.equalToSuperview().inset(35)
                make.left.right.equalToSuperview().inset(10)
            }
            
            contentView.addSubview(newReleases)
            newReleases.snp.makeConstraints { make in
                make.top.equalTo(searchField).inset(60)
                make.left.equalToSuperview().inset(10)
            }
            
            contentView.addSubview(showReleasesButton)
            showReleasesButton.snp.makeConstraints { make in
                make.top.equalTo(searchField).inset(68.5)
                make.right.equalTo(-10)
            }
            
            contentView.addSubview(bestOfArtists)
            bestOfArtists.snp.makeConstraints { make in
                make.left.equalToSuperview().inset(10)
                make.top.equalToSuperview().inset(2000)
            }
            
            bestOfArtists.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            
        }
    
}
