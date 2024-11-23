//
//  ViewController.swift
//  FoodDeliveryApp
//
//  Created by Алексей Чумаков on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors.background

        let label = UILabel()
        label.text = "Hello World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 208),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 28),
        ])

//        label.font = .Roboto.boldItalic.size(of: <#T##CGFloat#>)
        label.font = .Roboto.bold.of(size: 48)
        label.textColor = AppColors.accentOrange
    }


}
