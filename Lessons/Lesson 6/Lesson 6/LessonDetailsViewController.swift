import UIKit

class LessonDetailsViewController: UIViewController {

    @IBOutlet weak var courceNameLabel: UILabel!
    @IBOutlet var topicImageView: UIImageView!

    var courceName = ""
    var topicImageName = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        courceNameLabel.text = courceName
        topicImageView.image = UIImage(named: topicImageName)
    }


}
