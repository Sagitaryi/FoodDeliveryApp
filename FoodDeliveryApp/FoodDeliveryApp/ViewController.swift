//
//  ViewController.swift
//  FoodDeliveryApp
//
//  Created by Алексей Чумаков on 01.05.2025.
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors.background

        label.text = "Hello World!"


        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
            ]
        )
        
        label.font = .Roboto.italic.size(40)
        label.textColor = AppColors.accentOrange


    }


}

