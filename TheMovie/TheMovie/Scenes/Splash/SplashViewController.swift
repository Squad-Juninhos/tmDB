import UIKit

class SplashViewController: UIViewController {
    
    lazy var centerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
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
        view.addSubview(centerView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            centerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            centerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            centerView.widthAnchor.constraint(equalToConstant: 300),
            centerView.heightAnchor.constraint(equalToConstant: 249)
        ])
    }
}

// MARK: PREVIEW
//#if canImport(SwiftUI) && DEBUG
//import SwiftUI
//struct UIViewControllerPreview<SplashViewController: UIViewController>: UIViewControllerRepresentable {
//    let viewController: SplashViewController
//
//    init(_ builder: @escaping () -> SplashViewController) {
//        viewController = builder()
//    }
//
//    // MARK: - UIViewControllerRepresentable
//    func makeUIViewController(context: Context) -> SplashViewController {
//        viewController
//    }
//
//    func updateUIViewController(_ uiViewController: SplashViewController, context: UIViewControllerRepresentableContext<UIViewControllerPreview<SplashViewController>>) {
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
//          SplashViewController()
//      }.previewDevice(PreviewDevice(rawValue: deviceName))
//        .previewDisplayName(deviceName)
//    }
//  }
//}
//#endif
