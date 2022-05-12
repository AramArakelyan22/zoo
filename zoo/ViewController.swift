//
//  ViewController.swift
//  zoo
//
//  Created by Aram Arakelyan on 10.05.22.
//

import UIKit

class ViewController: UIViewController {
    var fishesButton: UIButton!
    var button: CommonButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
        button = CommonButton()
    }


}

extension ViewController {
    
    func commonInit() {
        initFishesButton()
        addHierarchy()
        activateConstraints()
    }
    
    func initFishesButton() {
        fishesButton = UIButton()
        fishesButton.setTitle("Fishes", for: .normal)
        fishesButton.setTitleColor(.black, for: .normal)
        fishesButton.setImage(UIImage(named: "fishes.jpeg"), for: .normal)
        fishesButton.translatesAutoresizingMaskIntoConstraints = false
    }
    func addHierarchy() {
        view.addSubview(fishesButton)
    }
    
    func activateConstraints() {
        NSLayoutConstraint.activate([
            fishesButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            fishesButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            fishesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
        ])
    }
}
