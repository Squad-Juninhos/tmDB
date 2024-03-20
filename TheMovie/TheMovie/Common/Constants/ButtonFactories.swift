//
//  ButtonFactories.swift
//  TheMovie
//
//  Created by Jeiel Lima on 15/03/24.
//

import Foundation
import UIKit

class SocialButton {
    static func create() -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.imageView?.contentMode = .scaleAspectFit
        button.imageView?.layer.cornerRadius = 10
        return button
    }
}

class ActionButton {
    static func create(title: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = ColorConstants.buttonColor
        button.layer.cornerRadius = 10
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.setTitleColor(.black, for: .normal)
        return button
    }
}

struct ButtonLayoutConstants {
    static let buttonSize = CGSize(width: 83, height: 83)
    static let buttonSpacing: CGFloat = 30
}
