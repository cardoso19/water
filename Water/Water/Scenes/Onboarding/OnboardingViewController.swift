//
//  OnboardingViewController.swift
//  Water
//
//  Created by Matheus Cardoso Kuhn on 10/09/20.
//  Copyright © 2020 Matheus Kuhn. All rights reserved.
//

import UIKit

protocol OnboardingDisplay: AnyObject {
}

final class OnboardingViewController: UIViewController {
    // MARK: - Visual Components
    private let iconImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "water"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()
    
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y Lorem Y"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private lazy var doneButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Done", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.tintColor = .red
        return button
    }()
    
    // MARK: - Variables
    private let viewModel: OnboardingViewModeling
    
    // MARK: - Life Cycles
    init(viewModel: OnboardingViewModeling) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        buildLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    private func buildLayout() {
        buildViewHierarchy()
        setupConstraints()
        configureViews()
    }
    
    private func buildViewHierarchy() {
        view.addSubview(iconImageView)
        view.addSubview(messageLabel)
        view.addSubview(doneButton)
    }
    
    private func setupConstraints() {
        iconImageView.centerXAnchor.constraint(equalTo: view.compatibleLayoutGuide.centerXAnchor).isActive = true
        iconImageView.topAnchor.constraint(equalTo: view.compatibleLayoutGuide.topAnchor).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        messageLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 32).isActive = true
        messageLabel.leadingAnchor.constraint(equalTo: view.compatibleLayoutGuide.leadingAnchor, constant: 16).isActive = true
        messageLabel.trailingAnchor.constraint(equalTo: view.compatibleLayoutGuide.trailingAnchor, constant: -16).isActive = true
        
        doneButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 32).isActive = true
        doneButton.leadingAnchor.constraint(equalTo: view.compatibleLayoutGuide.leadingAnchor, constant: 32).isActive = true
        doneButton.trailingAnchor.constraint(equalTo: view.compatibleLayoutGuide.trailingAnchor, constant: -32).isActive = true
        doneButton.bottomAnchor.constraint(equalTo: view.compatibleLayoutGuide.bottomAnchor, constant: -32).isActive = true
    }
    
    private func configureViews() {
        
    }
}

// MARK: - OnboardingDisplay
extension OnboardingViewController: OnboardingDisplay {
}
