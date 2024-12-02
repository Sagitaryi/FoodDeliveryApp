//
//  OnboardinCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Алексей Чумаков on 26.11.2024.
//

import UIKit

class OnboardingCoordinator: BaseCoordinator {
    override func start() {
        let vc = ViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
