//
//  CustomTableViewCell.swift
//  HW-5(UITableView)
//
//  Created by d0bsson on 26.11.2023.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {
    static let reuseId = "cell"
    
    //
    private lazy var cellView: UIView = {
        .config($0) {
            $0.backgroundColor = .white
            $0.layer.cornerRadius = 15
            
            $0.addSubview(image)
            $0.addSubview(nameLabel)
            $0.addSubview(personButton)
            $0.addSubview(phoneButton)
            $0.addSubview(text)
            $0.addSubview(discriptionButton)
        }
    }(UIView())
    
    //MARK: - image
    private lazy var image: UIImageView = {
        .config($0) {
            $0.contentMode = .scaleAspectFill
            $0.layer.cornerRadius = 15
            $0.clipsToBounds = true
        }
    }(UIImageView())
    
    //MARK: - Name
    private lazy var nameLabel: UILabel = {
        .config($0) {
            $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            $0.textColor = .black
        }
    }(UILabel())
    
    //    MARK: - person button
        private lazy var personButton: UIButton = {
            .config($0) {
                $0.setImage(UIImage(systemName: "person"), for: .normal)
            }
        }(UIButton())
    
    //    MARK: - phone button
    private lazy var phoneButton: UIButton = {
        .config($0) {
            $0.setImage(UIImage(systemName: "phone"), for: .normal)
        }
    }(UIButton())
    
    //MARK: - text
    private lazy var text: UILabel = {
        .config($0) {
            $0.numberOfLines = 0
            $0.textAlignment = .justified
        }
    }(UILabel())
    
    //MARK: - discription button
    private lazy var discriptionButton: UIButton = {
        .config($0) {
            $0.setTitle("Подробнее", for: .normal)
            $0.backgroundColor = UIColor(_colorLiteralRed: 0/255, green: 156/255, blue: 90/255, alpha: 1)
            $0.layer.cornerRadius = 10
        }
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    func configureCell(data: CellModel) {
        self.addSubview(cellView)
        self.backgroundColor = .clear
        self.selectionStyle = .none
        self.separatorInset = .zero
        
        nameLabel.text = data.userName
        image.image = UIImage(named: data.image)
        text.text = data.text
        
        NSLayoutConstraint.activate([
        
            cellView.topAnchor.constraint(equalTo: self.topAnchor),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            cellView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            image.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 18),
            image.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 18),
            image.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -18),
            image.bottomAnchor.constraint(equalTo: nameLabel.topAnchor, constant: -18),
            
            nameLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 18),
            nameLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -18),
            nameLabel.bottomAnchor.constraint(equalTo: text.topAnchor, constant: -18),
            
            personButton.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -28),
            personButton.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 18),
            personButton.bottomAnchor.constraint(equalTo: text.topAnchor, constant: -18),
            personButton.leadingAnchor.constraint(equalTo: phoneButton.trailingAnchor, constant: 18),
            
            phoneButton.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 18),
            phoneButton.bottomAnchor.constraint(equalTo: text.topAnchor, constant: -18),
            
            text.bottomAnchor.constraint(equalTo: discriptionButton.topAnchor, constant: -18),
            text.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 18),
            text.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -18),
            
            discriptionButton.topAnchor.constraint(equalTo: text.bottomAnchor, constant: 18),
            discriptionButton.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 18),
            discriptionButton.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -18),
            discriptionButton.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: -18)
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
