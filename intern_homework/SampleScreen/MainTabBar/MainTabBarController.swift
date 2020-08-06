import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTab()
    }

    private func setTab() {
        guard let sampleSerchViewController: UINavigationController = R.storyboard.sampleSerch.instantiateInitialViewController() else { return }
        
        setViewControllers([sampleSerchViewController, UIViewController()], animated: false)
    }
}
