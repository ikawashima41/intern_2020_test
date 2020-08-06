import UIKit

extension UIAlertController {
    static func createErrorAlert(_ error: ErrorType) -> UIAlertController {
        let alert = UIAlertController(title: error.message.title, message: error.message.description, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)

        alert.addAction(okAction)
        return alert
    }
}
