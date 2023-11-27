//
//  SecondViewController.swift
//  HW-5(UITableView)
//
//  Created by d0bsson on 27.11.2023.
//

import UIKit

final class SecondViewController: UIViewController {
    
    var cellData: CellModel?
    
    private lazy var nameLabel: UILabel = {
        .config($0) {
            $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            $0.textColor = .black
        }
    }(UILabel())
    
    private lazy var image: UIImageView = {
        .config($0) {
            $0.contentMode = .scaleAspectFill
            $0.clipsToBounds = true
            $0.layer.cornerRadius = 15
        }
    }(UIImageView())
    
    private lazy var text: UILabel = {
        .config($0) {
            $0.numberOfLines = 0
            $0.textAlignment = .justified
        }
    }(UILabel())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(nameLabel)
        view.addSubview(image)
        view.addSubview(text)
        setupView()
        setupData()
    }
    
    private func setupView() {
        NSLayoutConstraint.activate([
        
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            nameLabel.bottomAnchor.constraint(equalTo: image.topAnchor, constant: -18),
            
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            image.bottomAnchor.constraint(equalTo: text.topAnchor, constant: -18),
            
            text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            text.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18)
            
        ])
    }
    
    private func setupData() {
        if let image = cellData?.image,
           let text = cellData?.text,
           let name = cellData?.userName 
        {
            self.nameLabel.text = name
            self.text.text = text
            self.image.image = UIImage(named: image)
        }
    }
}
