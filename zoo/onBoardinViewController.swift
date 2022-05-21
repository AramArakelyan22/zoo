//
//  ViewController.swift
//  zoo
//
//  Created by Aram Arakelyan on 10.05.22.
//

import UIKit

class onBoardinViewController: UIViewController {
    var label: UILabel!
    var button: UIButton!
    var uiPicker: UIPickerView!
    var pickerData = ["Armenian", "English", "Russian"]
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
        button.addTarget(self,action: #selector(goHomePage), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }

    
    
    @objc func goHomePage() {
        let viewController = HomeViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension onBoardinViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func pickerView(
        _ pickerView: UIPickerView,
        titleForRow row: Int,
        forComponent component: Int
    ) -> String? {
        return pickerData[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }

}


extension onBoardinViewController {
    func initLable() {
        label = UILabel()
        label.text = "Welcome to Zoo"
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func initButton() {
        button = UIButton()
        button.setTitle("Get Started", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func initUiPicker() {
        uiPicker = UIPickerView()
        uiPicker.delegate = self
        uiPicker.dataSource = self
        uiPicker.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func commonInit() {
        initLable()
        initButton()
        initUiPicker()
        addHerarchy()
        activateConstraints()
    }
    
    func addHerarchy() {
        view.addSubview(label)
        view.addSubview(uiPicker)
        view.addSubview(button)
    }
    
    func activateConstraints() {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            uiPicker.topAnchor.constraint(equalTo: label.bottomAnchor),
            uiPicker.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            uiPicker.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            
            button.topAnchor.constraint(equalTo: uiPicker.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])
    }
}

