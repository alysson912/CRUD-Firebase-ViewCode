//
//  HomeScreen.swift
//  CRUD-Firebase
//
//  Created by Alysson on 06/10/23.
//

import UIKit

class HomeScreen: UIView {

    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress // defaut
        tf.attributedPlaceholder = NSAttributedString(string: "Name: ", attributes: [ NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]) // cor customizada
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        
        //tf.text = ""
        return tf
    }()
    lazy var ageTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .numberPad // defaut
        tf.attributedPlaceholder = NSAttributedString(string: "Idade: ", attributes: [ NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]) // cor customizada
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        
        //tf.text = ""
        return tf
    }()
    
    lazy var descriptionTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress // defaut
        tf.attributedPlaceholder = NSAttributedString(string: "Descrição: ...", attributes: [ NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)]) // cor customizada
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        
        //tf.text = ""
        return tf
    }()
    
    public func setupTextFieldDelegate(delegate: UITextFieldDelegate){
        nameTextField.delegate = delegate
        ageTextField.delegate = delegate
        descriptionTextField.delegate = delegate
    }
    
    private func addViews(){
        addSubview(nameTextField)
        addSubview(ageTextField)
        addSubview(descriptionTextField)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        
            nameTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameTextField.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            
            ageTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            ageTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            ageTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            
            descriptionTextField.topAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: 10),
            descriptionTextField.leadingAnchor.constraint(equalTo: ageTextField.leadingAnchor),
            descriptionTextField.trailingAnchor.constraint(equalTo: ageTextField.trailingAnchor),
            
        ])
    }
}
