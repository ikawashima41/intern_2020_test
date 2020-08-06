import SafariServices
import UIKit

final class SampleArticleListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var articleList: [ArticleData] = []
    
    override func viewDidLoad() {
        tableView.register(R.nib.sampleArticleListCell)
        tableView.reloadData()
    }
    
    func setData(data: [ArticleData]) {
        articleList = data
    }
}

extension SampleArticleListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.sampleArticleListCell, for: indexPath),
            let data = articleList[safe: indexPath.row] else { return UITableViewCell() }
        
        cell.setData(data: data)
        return cell
    }
}

extension SampleArticleListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let urlString = articleList[safe: indexPath.row]?.url, let url = URL(string: urlString) else { return }
        
        let safariViewController = SFSafariViewController(url: url)
        present(safariViewController, animated: true)
    }
}
