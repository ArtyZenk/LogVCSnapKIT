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
        label.text = "Login"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textColor = .white
        return label
    }()
    
    private lazy var loginTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Login"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var passwordTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var loginStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor(red: 85 / 255, green: 114 / 255, blue: 180 / 255, alpha: 1)
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var forgotButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 15
        button.setTitle("forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private lazy var headerStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 50
        stack.alignment = .center
        stack.distribution = .fill
        return stack
    }()
    
    private lazy var buttonStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private lazy var connectLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        return label
    }()
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor(red: 55 / 255, green: 164 / 255, blue: 239 / 255, alpha: 1)
        button.setTitle("Facebook", for: .normal)
        button.tintColor = .white
        button.layer.shadowColor = UIColor.blue.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var twitterButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 15
        button.backgroundColor = UIColor(red: 85 / 255, green: 114 / 255, blue: 180 / 255, alpha: 1)
        button.setTitle("Twitter", for: .normal)
        button.tintColor = .white
        button.layer.shadowColor = UIColor.blue.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var socialMediaStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 16
        return stack
    }()
    
    private lazy var haveAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textColor = .black
        return label
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 15
        button.setTitle("Sign up", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    private lazy var forgetStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 16
        return stack
    }()
    
    private lazy var footerStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .center
        stack.spacing = 16
        return stack
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarch()
    }
    
    override func viewDidLayoutSubviews() {
        setupLayout()
    }
}

// MARK: - Private methods

extension LoginViewController {
    private func setupHierarch() {
        view.addSubview(headerStack)
        view.addSubview(footerStack)
        
        view.subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setupLayout() {
        loginStack.addArrangedSubview(loginTF)
        loginStack.addArrangedSubview(passwordTF)
        
        buttonStack.addArrangedSubview(loginButton)
        buttonStack.addArrangedSubview(forgotButton)
        
        headerStack.addArrangedSubview(loginLabel)
        headerStack.addArrangedSubview(loginStack)
        headerStack.addArrangedSubview(buttonStack)
        
        socialMediaStack.addArrangedSubview(facebookButton)
        socialMediaStack.addArrangedSubview(twitterButton)
        
        forgetStack.addArrangedSubview(haveAccountLabel)
        forgetStack.addArrangedSubview(signUpButton)
        
        footerStack.addArrangedSubview(connectLabel)
        footerStack.addArrangedSubview(socialMediaStack)
        footerStack.addArrangedSubview(forgetStack)
                
        loginButton.snp.makeConstraints { make in
            make.height.equalTo(40)
        }
        
        loginStack.snp.makeConstraints { make in
            make.width.equalTo(280)
        }
        
        buttonStack.snp.makeConstraints { make in
            make.width.equalTo(280)
        }
        
        headerStack.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(110)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.width.equalTo(150)
        }
        
        twitterButton.snp.makeConstraints { make in
            make.width.equalTo(150)
        }
        
        footerStack.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view).offset(-110)
        }
    }
    
    private func setupView() {
        view.backgroundColor = .gray
    }
}
