//
//  ViewExtentions.swift
//  HW-5(UITableView)
//
//  Created by d0bsson on 26.11.2023.
//

import UIKit

extension UIView {
    static func config<T: UIView>(_ view: T, _ comlition: (T) -> ()) -> T {
        view.translatesAutoresizingMaskIntoConstraints = false
        comlition(view)
        return view
    }
}
