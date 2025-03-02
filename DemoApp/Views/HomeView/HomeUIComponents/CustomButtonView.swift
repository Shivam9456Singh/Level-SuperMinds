//
//  CustomButtonView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 28/02/25.
//
import UIKit

class CustomButtonView: UIView {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Initializer
    init(imageName: String, buttonText: String) {
        super.init(frame: .zero)
        setupView()
        configure(imageName: imageName, buttonText: buttonText)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    private func setupView() {
        addSubview(stackView)
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(imageView)
        backgroundColor = UIColor(.black.opacity(0.4))
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 5),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor , constant: -5),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            imageView.widthAnchor.constraint(equalToConstant: 24),
            imageView.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    // MARK: - Configure View
    func configure(imageName: String, buttonText: String) {
        imageView.image = UIImage(named: imageName) ?? UIImage(systemName: "photo") // Default if image not found
        textLabel.text = buttonText
    }
}
