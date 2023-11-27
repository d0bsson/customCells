//
//  ViewController.swift
//  HW-5(UITableView)
//
//  Created by d0bsson on 23.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    let tableData: [CellModel] = CellModel.getCellModel()
    
    private lazy var tableView: UITableView = {
        .config($0) {
            $0.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.reuseId)
            $0.dataSource = self
            $0.delegate = self
        }
    }(UITableView(frame: self.view.frame, style: .insetGrouped))

    private lazy var userNameLabel: UILabel = {
        .config($0) {
            $0.text = ""
        }
    }(UILabel())
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseId, for: indexPath) as? CustomTableViewCell {
            
            cell.configureCell(data: tableData[indexPath.row])
            
            return cell
        }
            
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.cellData = tableData[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

