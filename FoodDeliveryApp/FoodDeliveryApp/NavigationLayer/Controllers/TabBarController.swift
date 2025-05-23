import UIKit

class TabBarController: UITabBarController {

    init(tabBarControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        for bar in tabBarControllers {
            self.addChild(bar)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.backgroundColor = AppColors.background
        tabBar.tintColor = AppColors.accentOrange
    }
}
