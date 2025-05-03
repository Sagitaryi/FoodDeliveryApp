import UIKit

class AppCoordinator: Coordinator {
    override func start() {
        showOnboardingFlow()
    }

    override func finish() {
    print("AppCoordinator Finish")
    }
}

private extension AppCoordinator {
    func showOnboardingFlow() {
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }

    func mainFlow() {
        
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinator: any CoordinatorProtocol) {
        removeChildCoordinator(childCoordinator)

        switch childCoordinator.type {
        case .app:
            return
        default:
            navigationController.popToRootViewController(animated: false)
        }
    }
}
