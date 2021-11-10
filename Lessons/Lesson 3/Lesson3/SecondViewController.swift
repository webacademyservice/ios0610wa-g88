//
//  SecondViewController.swift
//  Lesson3
//
//  Created by Alexander Slobodjanjuk on 13.10.2021.
//

import UIKit

class SecondViewController: UIViewController {

//    init() {
//
//    }

    // Когда ViewController появляется на экране:

    override func loadView() {
        super.loadView()

        print("loadView")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Вызывается при первом открытии экрана
        print("viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Вызывается каждый раз при открытии экрана
        print("viewWillAppear")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    // Когда ViewController уходит с экрана:

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }

    deinit {
        //
    }

}
