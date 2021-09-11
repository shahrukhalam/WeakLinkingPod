//
//  ViewController.swift
//  App
//
//  Created by Shahrukh Alam on 11/09/21.
//

import UIKit
import Main
import Feature

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
        
        Main().printMe()
        _ = Feature()
        
#if canImport(Feature)
        print("Success in App Target")
#else
        print("Failed in App Target")
#endif
    }
    
}
