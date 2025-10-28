//
//  MainViewCell.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 28.10.2025.
//

import UIKit

final class MainViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    private lazy var universityStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [universityImageView, universityNameLabel])
        stackView.backgroundColor = .white
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let universityImageView: UIImageView = {
        let imageView = UIImageView()
        let image = #imageLiteral(resourceName: "University")
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFill
        imageView.image = image
        imageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        return imageView
    }()
    
    private let universityNameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.text = "Test Üniversite Adı"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension MainViewCell {
    
    private func setupUI() {
        self.contentView.backgroundColor = .white
        layout()
    }
    
    private func layout() {
        contentView.addSubview(universityStackView)
        NSLayoutConstraint.activate([
            universityStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6),
            universityStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 6),
            universityStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -6),
            universityStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -6)
        ])
    }
    
}
