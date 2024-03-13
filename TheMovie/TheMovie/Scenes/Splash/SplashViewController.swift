import UIKit
import Lottie

class SplashViewController: UIViewController {
    
    lazy var centerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var animationView: LottieAnimationView = {
        let animationView = LottieAnimationView(name: "tela")
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.loopMode = .loop
        animationView.play()
        animationView.contentMode = .scaleAspectFill
        return animationView
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
    
    func setupViewHierarchy() {
        centerView.addSubview(animationView)
        view.addSubview(centerView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            centerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            centerView.widthAnchor.constraint(equalToConstant: 300),
            centerView.heightAnchor.constraint(equalToConstant: 280),
            
            animationView.centerXAnchor.constraint(equalTo: centerView.centerXAnchor),
            animationView.centerYAnchor.constraint(equalTo: centerView.centerYAnchor),
            animationView.widthAnchor.constraint(equalTo: centerView.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: centerView.heightAnchor)
        ])
    }
}
