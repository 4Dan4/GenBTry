//
//  TextFieldExt.swift
//  GenBTry
//
//  Created by dan4 on 18.06.2022.
//

import UIKit

// MARK: - UITextFieldDelegate
extension SearchView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchField.resignFirstResponder()
        searchField.text?.removeAll()
        return true
    }
    
}
