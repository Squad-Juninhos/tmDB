//
//  Text.swift
//  TheMovie
//
//  Created by Jeiel Lima on 15/03/24.
//

import Foundation

struct Text {
    struct Auth {
        struct Login {
            static let socialSignIn = NSLocalizedString("Sign in with social accounts", comment:"Localizable")
            static let or           = NSLocalizedString("or", comment:"Localizable")
            static let btnSignIn    = NSLocalizedString("Sign In", comment:"Localizable")
            static let createButton = NSLocalizedString("Create a Free Account", comment:"Localizable")
        }
    }
    struct Image {
        static let googleLogo = "google_logo"
        static let appleLogo = "apple_logo"
        static let facebookLogo = "facebook_logo"
    }
}
