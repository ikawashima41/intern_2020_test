import UIKit

final class SampleSerchViewContorller: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var serchButton: UIButton!
    
    @IBAction func serchButtonTapped(_ sender: UIButton) {
        serchArticle()
    }
    
    private func serchArticle() {
        // 多重タップ防止
        serchButton.isEnabled = false
        
        guard let text = textField.text else { return }
        ArticleManager().fetchArticle(keyword: text) { [weak self] response in
            // URLSessionはbackground threadで行われる為UIの更新を明示的にMain Theadで行う
            DispatchQueue.main.sync {
                switch response {
                case .success(let result):
                    self?.serchButton.isEnabled = true
                    self?.loadViewController(data: result)
                    
                case .failure(let error):
                    self?.present(UIAlertController.createErrorAlert(error), animated: true)
                    
                }
            }
        }
    }
    
    private func loadViewController(data: [ArticleData]) {
        guard let viewController = R.storyboard.sampleArticleList().instantiateInitialViewController() as? SampleArticleListViewController else { return }
        viewController.setData(data: data)
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
