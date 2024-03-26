//
//  CreateViewController.swift
//  TheMovie
//
//  Created by Jeiel Lima on 23/03/24.
//

import UIKit

class CreateViewController: UIViewController {
    
    lazy var topLabel: UILabel = {
        let label = TextLabel.createLabel(text: Text.Auth.Create.createAccount)
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = TextField.createTf(placeholder: Text.Auth.Create.name)
        return textField
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = TextField.createTf(placeholder: Text.Auth.Create.email, keyboardType: .emailAddress)
        return textField
    }()
    
    lazy var passTextField: UITextField = {
        let textField = TextField.createTf(placeholder: Text.Auth.Create.password, isSecure: true)
        return textField
    }()
    
    lazy var confirmPassTextField: UITextField = {
        let textField = TextField.createTf(placeholder: Text.Auth.Create.confirm, isSecure: true)
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var buttonCreate: UIButton = {
        let button = ActionButton.create(title: Text.Auth.Create.create, action: #selector(alertCreateAccount), target: self)
        return button
    }()
    
    lazy var buttonLogin: UIButton = {
        let button = ActionButton.create(title: Text.Auth.Create.login, action: #selector(goToLoginScreen), target: self)
        button.backgroundColor = .clear
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorConstants.backColor
        setupView()
    }
    
    func setupView() {
        setupViewHierarchy()
        setupConstraints()
    }
    
    private func setupViewHierarchy() {
        view.addSubview(topLabel)
        view.addSubview(nameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passTextField)
        view.addSubview(confirmPassTextField)
        view.addSubview(buttonCreate)
        view.addSubview(buttonLogin)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: LayoutMarginsConstants.topLabelSpacing),
            
            nameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameTextField.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: LayoutMarginsConstants.topLabelSpacing),
            nameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: LayoutMarginsConstants.leadingMargin),
            nameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: LayoutMarginsConstants.trailingMargin),
            
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: LayoutMarginsConstants.textFieldSpacing),
            emailTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: LayoutMarginsConstants.leadingMargin),
            emailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: LayoutMarginsConstants.trailingMargin),
            
            passTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: LayoutMarginsConstants.textFieldSpacing),
            passTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: LayoutMarginsConstants.leadingMargin),
            passTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: LayoutMarginsConstants.trailingMargin),
            
            confirmPassTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmPassTextField.topAnchor.constraint(equalTo: passTextField.bottomAnchor, constant: LayoutMarginsConstants.textFieldSpacing),
            confirmPassTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: LayoutMarginsConstants.leadingMargin),
            confirmPassTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: LayoutMarginsConstants.trailingMargin),
            
            buttonCreate.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonCreate.topAnchor.constraint(equalTo: confirmPassTextField.bottomAnchor, constant: LayoutMarginsConstants.topLabelSpacing),
            buttonCreate.heightAnchor.constraint(equalToConstant: ButtonLayoutConstants.buttonHeight),
            buttonCreate.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: LayoutMarginsConstants.leadingMargin),
            buttonCreate.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: LayoutMarginsConstants.trailingMargin),
            
            buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonLogin.topAnchor.constraint(equalTo: buttonCreate.bottomAnchor, constant: ButtonLayoutConstants.buttonSpacing),
            buttonLogin.heightAnchor.constraint(equalToConstant: ButtonLayoutConstants.clearButtonHeight),
            buttonLogin.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: LayoutMarginsConstants.leadingMargin),
            buttonLogin.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: LayoutMarginsConstants.trailingMargin),
            
        ])
    }
    
    @objc func goToLoginScreen() {

    }
    
    @objc func alertCreateAccount() {
        
    }
}


#if canImport(SwiftUI) && DEBUG
import SwiftUI
struct UIViewControllerPreview<CreateViewController: UIViewController>: UIViewControllerRepresentable {
    let viewController: CreateViewController

    init(_ builder: @escaping () -> CreateViewController) {
        viewController = builder()
    }

    // MARK: - UIViewControllerRepresentable
    func makeUIViewController(context: Context) -> CreateViewController {
        viewController
    }

    func updateUIViewController(_ uiViewController: CreateViewController, context: UIViewControllerRepresentableContext<UIViewControllerPreview<CreateViewController>>) {
        return
    }
}
#endif

#if canImport(SwiftUI) && DEBUG
import SwiftUI

let deviceNames: [String] = [
    "iPhone 11 Pro Max",
]

@available(iOS 15.0, *)
struct ViewController_Preview: PreviewProvider {
  static var previews: some View {
    ForEach(deviceNames, id: \.self) { deviceName in
      UIViewControllerPreview {
        CreateViewController()
      }.previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
    }
  }
}
#endif
