import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let age: Int = 100

        if age < 18 {
            print("Young man")
        } else if age > 18 {
            print("Adult")
        }

        // MARK: switch and guard

        switch age {
            case 0...18: print("Young man")
            case 19...99: print("Adult")
            default: break
        }

        if age > 18 {
            print("Hello, I am adult person")
        }

        guard age < 18 else {
            print("Hello, I am adult person")
            return
        }
    }
}

// MARK: - Extensions (Расширения)
class FourthViewController: ThirdViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ThirdViewController: Some {
    func someFunc() {
        //
    }
}

protocol Some {
    func someFunc()
}
