//
//  ViewController.swift
//  HelloWord
//
//  Created by NolionsChen on 2021/5/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showMessage(sender: UIButton) {
        let selectedButton = sender
        if let wordToLookup = selectedButton.titleLabel?.text {
            let alertController = UIAlertController(
                title: "Welcome to My First App",
                message: "He say, " + wordToLookup,
                preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(
                UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            )
            alertController.addAction(
                UIAlertAction(title: "cancle", style: UIAlertAction.Style.default, handler:nil)
            )
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

