import UIKit

/*
а) Создайте класс Матрос (sailor), в котором будет один метод func sayHello() { }. Этот метод должен выводить в консоль приветствие. И класс Корабль, в котором будут свойства: название, массив “матросы”.
б) Создайте несколько экземпляров класса Матрос, и с их помощью экземпляр класса Корабль. С использованием цикла for выведите в консоль приветствие от имени всех матросов.
*/

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let sailor1 = Sailor()
        let sailor2 = Sailor()
        let sailor3 = Sailor()

        let ship1 = Ship(name: "Titanic", sailors: [sailor1, sailor2, sailor3])

        let arrayOfSailors = ship1.sailors

        for sailor in arrayOfSailors {
            sailor.sayHello()
        }
    }

}

class Sailor {
    func sayHello() {
        print("Hallo!")
    }
}

struct Ship {
    var name: String = ""
    var sailors: [Sailor] = []
}
