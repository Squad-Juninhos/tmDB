//
//  Factories.swift
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

class TextLabel {
    static func createLabel(text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 23)
        return label
    }
}

class TextField {
    static func createTf (placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = placeholder
        textField.font = .boldSystemFont(ofSize: 17)
        textField.borderStyle = .line
        textField.tintColor = .white
            let attributes = [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: attributes)
        return textField
    }
}

struct ButtonLayoutConstants {
    static let logoButtonSize = CGSize(width: 83, height: 83)
    static let buttonSpacing: CGFloat = 30
    static let buttonHeight: CGFloat = 60
    static let clearButtonHeight: CGFloat = 40
}

struct LayoutMarginsConstants {
    static let topLabelSpacing: CGFloat = 80
    static let textFieldSpacing: CGFloat = 40
    static let trailingMargin: CGFloat = -20
    static let leadingMargin: CGFloat = 20
}
