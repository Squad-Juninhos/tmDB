import Foundation
import UIKit

//MARK: - Buttons
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
    static func create(title: String, action: Selector, target: Any?) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = ColorConstants.buttonColor
        button.layer.cornerRadius = 10
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(target, action: action, for: .touchUpInside)
        return button
    }
}

//MARK: - Labels
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

//MARK: - TextField
class TextField {
    static func createTf (placeholder: String, isSecure: Bool = false, keyboardType: UIKeyboardType = .default) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = placeholder
        textField.font = .boldSystemFont(ofSize: 18)
        textField.textColor = .white
        textField.borderStyle = .none
        textField.isSecureTextEntry = isSecure
        textField.autocapitalizationType = .none
        textField.keyboardType = keyboardType
        textField.keyboardAppearance = .default
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.lightText]
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: attributes)
        
        let bottomLine = UIView()
        bottomLine.translatesAutoresizingMaskIntoConstraints = false
        bottomLine.backgroundColor = .lightText
        bottomLine.layer.cornerRadius = 0.5
        textField.addSubview(bottomLine)
        
        NSLayoutConstraint.activate([
            bottomLine.leadingAnchor.constraint(equalTo: textField.leadingAnchor),
            bottomLine.trailingAnchor.constraint(equalTo: textField.trailingAnchor),
            bottomLine.bottomAnchor.constraint(equalTo: textField.bottomAnchor),
            bottomLine.heightAnchor.constraint(equalToConstant: 1.5)
        ])
        return textField
    }
}

//MARK: - Magic Numbers
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
