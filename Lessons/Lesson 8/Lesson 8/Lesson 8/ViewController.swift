//
//  ViewController.swift
//  Lesson 8
//
//  Created by Alexander on 01.11.2021.
//

import UIKit
import Alamofire
import SDWebImage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://app.fakejson.com/q"
        
        let paramsData: [String: Any] = ["personNickname": "personNickname",
                                         "email": "internetEmail",
                                         "gender": "personGender",
                                         "age": 18,
                                         "_repeat": 10]
        let parameters: [String: Any] = ["token":"t5t1tivIZeHgQCUbUf2Ltw", "data": paramsData]

        AF.request(url, method: .post, parameters: parameters).responseJSON { (responce) in

            
        }

        
        
        
    }


}

