//
//  SceneDelegate.swift
//  FoodDeliveryApp
//
//  Created by Алексей Чумаков on 25.02.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let viewController = ViewController()
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
        let appCoordinator = AppCoordinator(type: .app, navigationController: navigationController, finishDelegate: nil)
        appCoordinator.start()
    }
}
