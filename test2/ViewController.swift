//
//  ViewController.swift
//  test2
//
//  Created by Kate Roberts on 11/08/2021.
//  Copyright © 2021 SaLT for my Squid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {

    var myTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextField.delegate = self
        view.addSubview(myTextField)
        layout()
        
    }
    
    func layout(){
        myTextField.backgroundColor = .white
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            myTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            myTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            myTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
        myTextField.layer.cornerRadius = 20
    }
    
    //    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    //        textField.becomeFirstResponder()
    //    }
    //
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("I'm acknowledging that you wish to write something now. I how I'm smart enough to pop up a keyboard to allow you to do so!")
    }

}

