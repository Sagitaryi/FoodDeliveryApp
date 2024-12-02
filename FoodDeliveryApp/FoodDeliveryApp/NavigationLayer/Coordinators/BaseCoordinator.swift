//
//  Coordinator.swift
//  FoodDeliveryApp
//
//  Created by Алексей Чумаков on 25.11.2024.
//
import UIKit

class BaseCoordinator: CoordinatorProtocol {
    var childCoordinators: [CoordinatorProtocol]
    var type: CoordinatorType
    var navigationController: UINavigationController
    var finishDelegate: CoordinatorFinishDelegate?

    init(childCoordinators: [any CoordinatorProtocol] = [], type: CoordinatorType, navigationController: UINavigationController, finishDelegate: (any CoordinatorFinishDelegate)? = nil) {
        self.childCoordinators = childCoordinators
        self.type = type
        self.navigationController = navigationController
        self.finishDelegate = finishDelegate
    }

    deinit {
        childCoordinators.forEach{ $0.finishDelegate = nil}
        childCoordinators.removeAll()
        print("Coordinator deinited \( type )")
    }

    func start() {
        fatalError("Start method should be implemented in child classes")
    }

    func finish() {
        print("Coordinator finish")
    }

}
