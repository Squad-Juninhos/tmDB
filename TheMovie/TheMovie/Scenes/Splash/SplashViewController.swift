//
//  SplashViewController.swift
//  TheMovie
//
//  Created by Jeiel Lima on 07/03/24.
//

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
