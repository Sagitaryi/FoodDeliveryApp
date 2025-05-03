import UIKit

class ListCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .gray
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
    print("ListCoordinator Finish")
    }
}
