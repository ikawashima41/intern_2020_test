import UIKit

final class LoginViewController: UIViewController {
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        loadMainTabBar()
    }
    
    private func loadMainTabBar() {
        let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        window?.rootViewController = MainTabBarController()
    }
}
