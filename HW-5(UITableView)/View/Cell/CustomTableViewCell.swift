//
//  CustomTableViewCell.swift
//  HW-5(UITableView)
//
//  Created by d0bsson on 26.11.2023.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {
    static let reuseId = "cell"
    
    //MARK: - image
    private lazy var image: UIImageView = {
        .config($0) {
            $0.contentMode = .scaleAspectFill
            $0.clipsToBounds = true
        }
    }(UIImageView())
    
    //MARK: - Name
    private lazy var nameLabel: UILabel = {
        .config($0) {
            $0.font = UIFont.systemFont(ofSize: 20, weight: .regular)
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
        }
    }(UILabel())
    
    //MARK: - discription button
    private lazy var DiscriptionButton: UIButton = {
        .config($0) {
            $0.setTitle("Подробнее", for: .normal)
        }
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    func configureCell(data: CellModel) {
        print(data.userName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
