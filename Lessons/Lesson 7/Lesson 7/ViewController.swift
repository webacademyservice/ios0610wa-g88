import UIKit

class ViewController: UIViewController {

    // Список объектов на экране с которыми мы работаем:
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var centralSwitch: UISwitch!

    // Actions. Методы, которые вызываются по нажатию на кнопки:

    @IBAction func saveDataPressed(_ sender: Any) {

        // Удалили пользователя который был сохранен ранее
        DataManager().deleteSavedUser()

        // На основе введенных пользователем данных создаем объект User
        let user = User(firstName: firstTextField.text ?? "",
                        lastName: secondTextField.text ?? "",
                        isMarried: centralSwitch.isOn)

        // И передаем его в DataManager для сохранения:
        DataManager().saveUser(user)
    }

    @IBAction func showDataPressed(_ sender: Any) {

        // Получаем объект User из DataManager
        guard let user = DataManager().getUser() else {
            print("User cant be loaded")
            return
        }

        // "Раскладываем" объект User на имя фамилию и семейное положение:
        let nameString: String = user.firstName
        let lastNameString: String = user.lastName
        let isMarriedString: String = String(describing: user.isMarried)

        // Создаем строку на основе полученных данных:
        let message = """
            First Name: \(nameString)
            Second Name: \(lastNameString)
            Married: \(isMarriedString)
        """

        // Создаем AllertController, который отобразит данные:
        let allertController = UIAlertController(title: "Main user:",
                                                 message: message,
                                                 preferredStyle: .alert)

        allertController.addAction(UIAlertAction(title: "Ok",
                                                 style: .default,
                                                 handler: nil))

        self.present(allertController, animated: true, completion: nil)
    }
}

extension ViewController: UITextFieldDelegate {

    // Метод, который срабатывает по нажатию на Return кнопку на клавиатуре:
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
