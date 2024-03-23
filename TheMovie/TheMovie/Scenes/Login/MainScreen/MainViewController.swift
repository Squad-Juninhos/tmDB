import UIKit

class MainViewController: UIViewController {
    
    lazy var topLabel: UILabel = {
        let label = TextLabel.createLabel(text: Text.Auth.Login.socialSignIn)
        return label
    }()
    
    lazy var googleButton: UIButton = {
        let button = SocialButton.create()
        button.setImage(UIImage(named: Text.Image.googleLogo), for: .normal)
        return button
    }()
    
    lazy var appleButton: UIButton = {
        let button = SocialButton.create()
        button.setImage(UIImage(named: Text.Image.appleLogo), for: .normal)
        return button
    }()
    
    lazy var faceButton: UIButton = {
        let button = SocialButton.create()
        button.setImage(UIImage(named: Text.Image.facebookLogo), for: .normal)
        return button
    }()
    
    lazy var lowerLabel: UILabel = {
        let label = TextLabel.createLabel(text: Text.Auth.Login.or)
        return label
    }()
    
    lazy var createButton: UIButton = {
        let button = ActionButton.create(title: Text.Auth.Login.createButton)
        return button
    }()
    
    lazy var signButton: UIButton = {
        let button = ActionButton.create(title: Text.Auth.Login.btnSignIn)
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
        NSLayoutConstraint.activate([
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            
            googleButton.widthAnchor.constraint(equalToConstant: ButtonLayoutConstants.buttonSize.width),
            googleButton.heightAnchor.constraint(equalToConstant: ButtonLayoutConstants.buttonSize.height),
            googleButton.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 50),
            googleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: ButtonLayoutConstants.buttonSpacing),
            
            appleButton.widthAnchor.constraint(equalToConstant: ButtonLayoutConstants.buttonSize.width),
            appleButton.heightAnchor.constraint(equalToConstant: ButtonLayoutConstants.buttonSize.height),
            appleButton.centerYAnchor.constraint(equalTo: googleButton.centerYAnchor),
            appleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            faceButton.widthAnchor.constraint(equalToConstant: ButtonLayoutConstants.buttonSize.width),
            faceButton.heightAnchor.constraint(equalToConstant: ButtonLayoutConstants.buttonSize.height),
            faceButton.centerYAnchor.constraint(equalTo: googleButton.centerYAnchor),
            faceButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -ButtonLayoutConstants.buttonSpacing),
            
            lowerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lowerLabel.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 60),
            
            createButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            createButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            createButton.topAnchor.constraint(equalTo: lowerLabel.bottomAnchor, constant: 60),
            createButton.heightAnchor.constraint(equalToConstant: 60),
            
            signButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            signButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            signButton.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 30),
            signButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
}
