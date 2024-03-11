import UIKit

class LoginViewController: UIViewController {
    
    lazy var topLabel: UILabel = {
        let label = createLabel(text: "Sign in with social accounts")
        return label
    }()
    
    lazy var googleButton: UIButton = {
        let button = createSocialButton()
        return button
    }()
    
    lazy var appleButton: UIButton = {
        let button = createSocialButton()
        return button
    }()
    
    lazy var faceButton: UIButton = {
        let button = createSocialButton()
        return button
    }()
    
    lazy var lowerLabel: UILabel = {
        let label = createLabel(text: "or")
        return label
    }()
    
    lazy var createButton: UIButton = {
        let button = createActionButton(title: "Create a Free Account")
        return button
    }()
    
    lazy var signButton: UIButton = {
        let button = createActionButton(title: "Sign In")
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
        view.addSubview(googleButton)
        view.addSubview(appleButton)
        view.addSubview(faceButton)
        view.addSubview(lowerLabel)
        view.addSubview(createButton)
        view.addSubview(signButton)
    }
    
    private func setupConstraints() {
        let buttonSize = CGSize(width: 83, height: 83)
        let buttonSpacing: CGFloat = 30
        
        NSLayoutConstraint.activate([
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            
            googleButton.widthAnchor.constraint(equalToConstant: buttonSize.width),
            googleButton.heightAnchor.constraint(equalToConstant: buttonSize.height),
            googleButton.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 50),
            googleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: buttonSpacing),
            
            appleButton.widthAnchor.constraint(equalToConstant: buttonSize.width),
            appleButton.heightAnchor.constraint(equalToConstant: buttonSize.height),
            appleButton.centerYAnchor.constraint(equalTo: googleButton.centerYAnchor),
            appleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            faceButton.widthAnchor.constraint(equalToConstant: buttonSize.width),
            faceButton.heightAnchor.constraint(equalToConstant: buttonSize.height),
            faceButton.centerYAnchor.constraint(equalTo: googleButton.centerYAnchor),
            faceButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -buttonSpacing),
            
            lowerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lowerLabel.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 60),
            
            createButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            createButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            createButton.topAnchor.constraint(equalTo: lowerLabel.bottomAnchor, constant: 45),
            createButton.heightAnchor.constraint(equalToConstant: 60),
            
            signButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            signButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            signButton.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 30),
            signButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    private func createLabel(text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 23)
        return label
    }
    
    private func createSocialButton() -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        return button
    }
    
    private func createActionButton(title: String) -> UIButton {
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

//#if canImport(SwiftUI) && DEBUG
//import SwiftUI
//struct UIViewControllerPreview<LoginViewController: UIViewController>: UIViewControllerRepresentable {
//    let viewController: LoginViewController
//
//    init(_ builder: @escaping () -> LoginViewController) {
//        viewController = builder()
//    }
//
//    // MARK: - UIViewControllerRepresentable
//    func makeUIViewController(context: Context) -> LoginViewController {
//        viewController
//    }
//
//    func updateUIViewController(_ uiViewController: LoginViewController, context: UIViewControllerRepresentableContext<UIViewControllerPreview<LoginViewController>>) {
//        return
//    }
//}
//#endif
//
//#if canImport(SwiftUI) && DEBUG
//import SwiftUI
//
//let deviceNames: [String] = [
//    "iPhone 11 Pro Max",
//]
//
//@available(iOS 13.0, *)
//struct ViewController_Preview: PreviewProvider {
//  static var previews: some View {
//    ForEach(deviceNames, id: \.self) { deviceName in
//      UIViewControllerPreview {
//          LoginViewController()
//      }.previewDevice(PreviewDevice(rawValue: deviceName))
//        .previewDisplayName(deviceName)
//    }
//  }
//}
//#endif
//
