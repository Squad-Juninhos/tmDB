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
        let textField = TextField.createTf(placeholder: Text.Auth.Create.email)
        return textField
    }()
    
    lazy var passTextField: UITextField = {
        let textField = TextField.createTf(placeholder: Text.Auth.Create.password)
        return textField
    }()
    
    lazy var confirmPassTextField: UITextField = {
        let textField = TextField.createTf(placeholder: Text.Auth.Create.confirm)
        return textField
    }()
    
    lazy var buttonCreate: UIButton = {
        let button = ActionButton.create(title: Text.Auth.Create.create)
        return button
    }()
    
    lazy var buttonLogin: UIButton = {
        let button = ActionButton.create(title: Text.Auth.Create.login)
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
        
        ])
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
