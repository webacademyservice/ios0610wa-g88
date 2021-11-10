import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let array: [Any] = [Cow(name: "Буренка"), Grass(name: "Зеленая трава"), FarmGuy(name: "Вася")]
        let array2: [HasName] = [Cow(name: "Буренка"), Grass(name: "Зеленая трава"), FarmGuy(name: "Вася")]

        if let myCow = array[0] as? Cow {
            myCow.name
        }

        for item in array {

            if let cow = item as? Cow {
                print(cow.name)
            } else if let grass = item as? Grass {
                print(grass.name)
            } else if let farmGuy = item as? FarmGuy {
                print(farmGuy.name)
            }
        }

        for item in array2 {
            item.printName()
        }

    }
}

struct Cow: HasName {

    var name: String

    func printName() {
        print("Короье имя: " + self.name)
    }
}

struct Grass: HasName {
    var name: String

    func printName() {
        print("Название типа травы: " + self.name)
    }
}

struct FarmGuy: HasName {
    var name: String

    func printName() {
        print(self.name)
    }
}

protocol HasName {
    var name: String { get set }
    func printName()
}
