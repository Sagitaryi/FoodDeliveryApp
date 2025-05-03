import UIKit

class AppCoordinator: Coordinator {
    override func start() {
//        showOnboardingFlow()
        showMainFlow()
    }

    override func finish() {
    print("AppCoordinator Finish")
    }
}

private extension AppCoordinator {
    func showOnboardingFlow() {
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController!, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }

    func showMainFlow() {
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(type: .home, navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "circle"), tag: 0)
        homeCoordinator.finishDelegate = self
        homeCoordinator.start()

        let orderNavigationController = UINavigationController()
        let orderCoordinator = OrderCoordinator(type: .order, navigationController: orderNavigationController)
        orderNavigationController.tabBarItem = UITabBarItem(title: "Order", image: UIImage(systemName: "circle"), tag: 1)
        orderCoordinator.finishDelegate = self
        orderCoordinator.start()

        let listNavigationController = UINavigationController()
        let listCoordinator = ListCoordinator(type: .list, navigationController: listNavigationController)
        listNavigationController.tabBarItem = UITabBarItem(title: "My list", image: UIImage(systemName: "circle"), tag: 2)
        listCoordinator.finishDelegate = self
        listCoordinator.start()

        let profileNavigationController = UINavigationController()
        let profileCoordinator = ProfileCoordinator(type: .profile, navigationController: profileNavigationController)
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "circle"), tag: 3)
        profileCoordinator.finishDelegate = self
        profileCoordinator.start()

        addChildCoordinator(homeCoordinator)
        addChildCoordinator(orderCoordinator)
        addChildCoordinator(listCoordinator)
        addChildCoordinator(profileCoordinator)

        let tabBarControllers = [homeNavigationController, orderNavigationController,listNavigationController, profileNavigationController]
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)

        navigationController?.pushViewController(tabBarController, animated: true)

    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinator: any CoordinatorProtocol) {
        removeChildCoordinator(childCoordinator)

        switch childCoordinator.type {
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        }
    }
}
