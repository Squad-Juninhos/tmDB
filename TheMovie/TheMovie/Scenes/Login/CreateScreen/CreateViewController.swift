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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorConstants.backColor

    }
}
