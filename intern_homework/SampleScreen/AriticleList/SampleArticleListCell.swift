import Nuke
import UIKit

final class SampleArticleListCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var descriptionTextLabel: UILabel!
    
    func setData(data: ArticleData) {
        titleTextLabel.text = data.title
        descriptionTextLabel.text = "LGTM: " +  String(data.likesCount)
        
        if let urlString = data.user?.profileImageUrl,
            let url = URL(string: urlString) {
            Nuke.loadImage(with: url, into: userImageView)
        }
    }
}
