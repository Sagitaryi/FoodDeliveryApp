import UIKit

class ProfileCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .systemPink
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
    print("ProfileCoordinator Finish")
    }
}
