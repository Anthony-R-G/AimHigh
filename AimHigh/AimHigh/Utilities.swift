//
//  Utilities.swift
//  AimHigh
//
//  Created by Anthony Gonzalez on 6/16/20.
//  Copyright © 2020 Chisme y Cafecito. All rights reserved.
//

import Foundation

import UIKit

class Utilities {
    
    static func createPersonDetailLabel(isTitle: Bool, text: String) -> UILabel {
        let label = UILabel()
        label.textColor = .white
        label.text = text
        label.font = isTitle ? UIFont.boldSystemFont(ofSize: 15) : UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        
        return label
    }
    
    static func showAlert(vc: UIViewController, message: String) {
        let alertVC = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alertVC, animated: true, completion: nil)
    }
}
