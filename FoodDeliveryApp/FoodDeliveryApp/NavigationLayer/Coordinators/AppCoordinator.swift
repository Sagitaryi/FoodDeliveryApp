//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Алексей Чумаков on 26.11.2024.
//

class AppCoordinator: BaseCoordinator {
    private var onboardingCoordinator: OnboardingCoordinator?

    override func start() {
        showOnboardingFlow()
    }

    override func finish() {
        print("AppCoordinator finish")
    }
}

// MARK: - Navigation methods
private extension AppCoordinator {

    func showOnboardingFlow() {
        let onboardingCoordinator = OnboardingCoordinator(childCoordinators: [], type: .onboarding, navigationController: self.navigationController, finishDelegate: self)
        self.onboardingCoordinator = onboardingCoordinator
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }

    func showMainFlow() {
        
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinator: any CoordinatorProtocol) {
        self.removeChildCoordinator(childCoordinator)

        switch childCoordinator.type {
        case .app:
            return
        default:
            navigationController.popToRootViewController(animated: false)
        }
    }
}
