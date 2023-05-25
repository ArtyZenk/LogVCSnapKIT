//
//  LoginViewController.swift
//  LogVCSnapKIT
//
//  Created by Artyom Guzenko on 25.05.2023.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    // MARK: - Elements
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        return label
    }()
    
    private lazy var loginTF: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var passwordTF: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var loginStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        return button
    }()
    
    private lazy var forgotButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        return button
    }()
    
    private lazy var buttonStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private lazy var connectLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        return label
    }()
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.automaticallyUpdatesConfiguration = false
        button.layer.cornerRadius = 15
        return button
    }()
    
    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.automaticallyUpdatesConfiguration = false
        button.layer.cornerRadius = 15
        return button
    }()
    
    private lazy var socialMediaStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private lazy var haveAccountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        return label
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        return button
    }()
    
    private lazy var forgetStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private lazy var footerStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension LoginViewController {
    private func setupHierarch() {
    }
    
    private func setupLayout() {
    }
    
    private func setupView() {
    }
}
