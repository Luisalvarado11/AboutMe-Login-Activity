//
//  ViewController.swift
//  Login
//
//  Created by Luis Alvarado on 3/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var UserNameTextField: UITextField!

    @IBOutlet var forgotUsername: UIButton!

    @IBOutlet var forgotPassword: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = UserNameTextField.text
        }
    }
}
