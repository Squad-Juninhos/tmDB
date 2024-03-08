import UIKit

class LoginViewController: UIViewController {
    
    lazy var topLabel: UILabel = {
        let topLabel = UILabel()
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        topLabel.text = "Sign in with social accounts"
        topLabel.textColor = .white
        topLabel.font = UIFont.boldSystemFont(ofSize: 23)
        return topLabel
    }()
    
    lazy var googleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var appleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var faceButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var lowerLabel: UILabel = {
        let lowerLabel = UILabel()
        lowerLabel.translatesAutoresizingMaskIntoConstraints = false
        lowerLabel.text = "or"
        lowerLabel.textColor = .white
        lowerLabel.font = UIFont.boldSystemFont(ofSize: 23)
        return lowerLabel
    }()
    
    lazy var createButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = ColorConstants.buttonColor
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var signButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = ColorConstants.buttonColor
        button.layer.cornerRadius = 10
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

    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            
            googleButton.widthAnchor.constraint(equalToConstant: 83),
            googleButton.heightAnchor.constraint(equalToConstant: 83),
            googleButton.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 50),
            googleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            
            appleButton.widthAnchor.constraint(equalToConstant: 83),
            appleButton.heightAnchor.constraint(equalToConstant: 83),
            appleButton.centerYAnchor.constraint(equalTo: googleButton.centerYAnchor),
            appleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            faceButton.widthAnchor.constraint(equalToConstant: 83),
            faceButton.heightAnchor.constraint(equalToConstant: 83),
            faceButton.centerYAnchor.constraint(equalTo: googleButton.centerYAnchor),
            faceButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            
            lowerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lowerLabel.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 45),
            
        ])
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
