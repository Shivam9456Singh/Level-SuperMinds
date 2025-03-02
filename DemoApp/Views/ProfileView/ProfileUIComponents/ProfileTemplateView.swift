//
//  ProfileTemplateView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 02/03/25.
//

import UIKit

class ProfileTemplateView: UIView {
    
    let containerView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = .clear
        return container
    }()
  
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "profileIcon")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let profileName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .label
        label.textAlignment = .center
        label.text = "Sourav"
        return label
    }()
    
    let premiumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "premiumIcon")
        return imageView
    }()
    
    let premiumTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .yellow
        label.textAlignment = .center
        label.text = "Level Premium User >"
        return label
    }()
    
    let settingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "settingsIcon")
        return imageView
    }()
    
    let streaksStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        return stack
    }()
    
    // MARK: - Day Streak View
    let dayStreakView = ProfileStatView(imageName: "button1Image", valueText: "17", labelText: "Day Streak")
    
    // MARK: - Gold League View
    let goldLeagueView = ProfileStatView(imageName: "Gold2", valueText: "#04", labelText: "Gold League")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(containerView)
        containerView.addSubview(profileImageView)
        containerView.addSubview(profileName)
        containerView.addSubview(premiumImageView)
        containerView.addSubview(settingImageView)
        containerView.addSubview(premiumTextLabel)
        
        // StackView for streak views
        containerView.addSubview(streaksStackView)
        streaksStackView.addArrangedSubview(dayStreakView)
        streaksStackView.addArrangedSubview(goldLeagueView)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            profileImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            profileImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            profileImageView.heightAnchor.constraint(equalToConstant: 75),
            
            profileName.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            profileName.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 10),
            
            premiumImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            premiumImageView.leadingAnchor.constraint(equalTo: profileName.trailingAnchor, constant: 10),
            
            premiumTextLabel.topAnchor.constraint(equalTo: profileName.bottomAnchor, constant: 10),
            premiumTextLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 10),
            
            settingImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            settingImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            
            // StackView constraints
            streaksStackView.topAnchor.constraint(equalTo: premiumTextLabel.bottomAnchor, constant: 50),
            streaksStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            streaksStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            streaksStackView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}

// MARK: - Reusable ProfileStatView
class ProfileStatView: UIView {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.textAlignment = .center
        return label
    }()
    
    private let verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.alignment = .leading
        return stackView
    }()
    
    private let horizontalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .center
        return stackView
    }()
    
    init(imageName: String, valueText: String, labelText: String) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .clear
        layer.borderColor = CGColor(red: 62/255, green: 56/255, blue: 79/255, alpha: 1)
        layer.cornerRadius = 20
        layer.borderWidth = 1
        
        imageView.image = UIImage(named: imageName)
        valueLabel.text = valueText
        descriptionLabel.text = labelText
        
        // Add valueLabel and descriptionLabel to vertical stack
        verticalStackView.addArrangedSubview(valueLabel)
        verticalStackView.addArrangedSubview(descriptionLabel)
        
        // Add image and verticalStackView to horizontal stack
        horizontalStackView.addArrangedSubview(imageView)
        horizontalStackView.addArrangedSubview(verticalStackView)
        
        addSubview(horizontalStackView)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            horizontalStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            horizontalStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            imageView.widthAnchor.constraint(equalToConstant: 25),
            imageView.heightAnchor.constraint(equalToConstant: 25),
            
        ])
    }
}
