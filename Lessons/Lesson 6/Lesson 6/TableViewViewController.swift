import UIKit

class TableViewViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    // Массив (array) данных для нашей таблицы
    let topicsList = TopicsDataSource.topicsList

    override func viewDidLoad() {
        super.viewDidLoad()

        // Без следующих двух строк у нас не будут вызываться методы в extension:
        tableView.dataSource = self
        tableView.delegate = self

        // Создали кастомную "свою" ячейку и зарегистрировали ее в таблице:
        let topicCellNib = UINib(nibName: "TopicTableViewCell", bundle: nil)
        tableView.register(topicCellNib, forCellReuseIdentifier: "TopicTableViewCell")
    }

}

extension TableViewViewController: UITableViewDataSource {

// Далее расположены методы "датаСоурса": первый возвращает количество ячеек,
// второй возвращает саму ячейку

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topicsList.count
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicTableViewCell") as! TopicTableViewCell
        // Этот метод вызывается каждый раз когда отрисовывается ячейка.
        // И каждый раз indexPath.row имеет разное значение: 0, 1, 2, 3 ...
        // Отталкиваясь от этого, мы создали на 8строке и обращаемся к его элементам:
        let topic = topicsList[indexPath.row]
        cell.topicTitleLabel.text = topic.name
        cell.topicImageView?.image = UIImage(named: String(indexPath.row + 1))
        cell.selectionStyle = .none
        return cell
    }
}

// Далее расположены методы "делегата": первый возвращает высоту ячейки,
// второй вызывается по нажатию на ячейку

extension TableViewViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // [1] ---> [2] ---> [3] ---> [4]

        let identifier = "LessonDetailsViewController"
        let main = UIStoryboard(name: "Main", bundle: nil)
        let detailViewController = main.instantiateViewController(withIdentifier: identifier) as! LessonDetailsViewController
        detailViewController.courceName = topicsList[indexPath.row].name
        detailViewController.topicImageName = topicsList[indexPath.row].imageName
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}


