//
//  ViewController.swift
//  CRUD-Firebase
//
//  Created by Alysson on 06/10/23.
//

import UIKit

class HomeVC: UIViewController {

    private var screen: HomeScreen?
    
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyboard()
        screen?.setupTextFieldDelegate(delegate: self)
    }


}

extension HomeVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
       
          
      }

      func textFieldDidEndEditing(_ textField: UITextField) {
          
      }
      func textFieldShouldReturn(_ textField: UITextField) -> Bool {
          //print( "textFieldShouldReturn")
          textField.resignFirstResponder()
          
          return true
      }
    
}
