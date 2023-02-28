//
//  ViewController.swift
//  MVVM_simple
//
//  Created by Карина on 28.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginField: UITextField!
    
    @IBOutlet var passField: UITextField!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginField.text ?? "" ), password: (passField.text ?? ""))
    }
    
    @IBOutlet var label: UILabel!
    
    var viewModel = ViewModel()
    
    func initialState() {
        label.textColor = #colorLiteral(red: 0.956528008, green: 0.956528008, blue: 0.9565278888, alpha: 1)
        label.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({(statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
        viewModel.statusColor.bind({(statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        } )
    }


}

