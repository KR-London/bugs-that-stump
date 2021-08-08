//
//  ViewController.swift
//  test
//
//  Created by Kate Roberts on 07/08/2021.
//

import UIKit
import SoftUIView

class ViewController: UIViewController {

    @IBOutlet var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let softUIViewNameEntry = SoftUIView(frame: .init(x:  20, y: 200, width: 200, height: 100))
                                             
        softUIViewNameEntry.isSelected = true
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(softUIViewNameEntry)
        myTextField.backgroundColor = .clear
        
        softUIViewNameEntry.addSubview(myTextField)
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myTextField.topAnchor.constraint(equalTo: softUIViewNameEntry.topAnchor),
            myTextField.bottomAnchor.constraint(equalTo: softUIViewNameEntry.bottomAnchor),
            myTextField.leadingAnchor.constraint(equalTo: softUIViewNameEntry.leadingAnchor, constant: 5),
            myTextField.trailingAnchor.constraint(equalTo: softUIViewNameEntry.trailingAnchor, constant: -5)
        ])
    
        
    }


}

