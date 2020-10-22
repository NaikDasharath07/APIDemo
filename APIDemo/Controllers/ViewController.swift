//
//  ViewController.swift
//  APIDemo
//
//  Created by Dasharath Naik on 08/10/20.
//  Copyright © 2020 Dasharath Naik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dict:NSDictionary = [:]
    var avtar:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        demoApp()
    }
    func demoApp(){
        
        
        if let url = URL(string: "https://api.github.com/users/kobeumut"){
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if data != nil && err == nil{
                do{
//                    self.dict = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as! NSDictionary
////                    self.avtar = self.dict.value(forKey: "avatar_url") as! String
//
//                    print(self.avtar)
                    
                    let jsonData = try JSONDecoder().decode(manageData.self, from: data!)
                    print(jsonData.login)
                }catch{
                    print(error.localizedDescription)
                }
            }
            }.resume()
    }
    }

}

