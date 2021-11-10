//
//  ViewController.swift
//  Lesson 5
//
//  Created by Alexander Slobodjanjuk on 18.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet weak var centralButton: UIButton!

    @IBOutlet var allColorsViews: [UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()


//        //1
//        let coordinates = CGRect(x: 80,
//                                 y: 80,
//                                 width: 100,
//                                 height: 100)
//        let customView: UIView = UIView(frame: coordinates)
//        customView.backgroundColor = UIColor.green
//        customView.layer.cornerRadius = 50
//        customView.clipsToBounds = true
//        self.view.addSubview(customView)
//
//        // 2
//        let coordinates1 = CGRect(x: 160,
//                                 y: 160,
//                                 width: 100,
//                                 height: 100)
//        let customView1: UIView = UIView(frame: coordinates1)
//        customView1.backgroundColor = UIColor.yellow
//        customView1.layer.cornerRadius = 50
//        customView1.clipsToBounds = true
//        self.view.addSubview(customView1)

        // 3
        blueView.clipsToBounds = true
        blueView.layer.cornerRadius = 50

        // 4
        orangeView.clipsToBounds = true
        orangeView.layer.cornerRadius = 50
        // 5
        yellowView.clipsToBounds = true
        yellowView.layer.cornerRadius = 50


//        print(orangeView.superview)
//
//        print(orangeView.subviews)

        view.bringSubviewToFront(yellowView)

        print(yellowView.frame)
        print(yellowView.bounds)

        yellowView.bounds = CGRect(x: 100,
                                  y: 100,
                                  width: 500,
                                  height: 500)

        yellowView.frame = CGRect(x: 100,
                                  y: 100,
                                  width: 100,
                                  height: 100)
        view.layoutSubviews()

        yellowView.isUserInteractionEnabled = true



    }

    @IBAction func cetralButtonDidPressed(_ sender: Any) {

//        yellowView.backgroundColor = .red
//        print("Кнопка нажата!")
//
//        for item in view.subviews {
//
//            if item.tag == 21 {
//                item.backgroundColor = UIColor.black
//            } else {
//                item.backgroundColor = .red
//            }
//        }
//
//        self.centralButton.isHidden = true

        UIView.animate(withDuration: 2.0,
                       delay: 2.0,
                       options: [.repeat, .autoreverse, .curveEaseInOut]) {
            self.yellowView.center = self.view.center
            self.yellowView.alpha = 0.0
        } completion: { finished in
            UIView.animate(withDuration: 1.0) {
                self.blueView.center = self.view.center
                self.yellowView.alpha = 1.0
//                self.view.layer.cornerRadius = 500
            } completion: { _ in

            }

        }

        self.view.layoutIfNeeded()


        for item in allColorsViews {
            item.layer.cornerRadius = 50
        }


    }


}

