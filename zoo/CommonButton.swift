//
//  CommonButton.swift
//  zoo
//
//  Created by Aram Arakelyan on 11.05.22.
//

import UIKit

class CommonButton: UIView {
    var button: UIButton!
    var label: UILabel!
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
}

extension CommonButton {
    
    func commonInit() {
        initButton()
        initLabel()
        addHierarchy()
        activateConstraints()
    }
    
    func initButton() {
        button = UIButton()
        button.setTitle("Fishes", for: .normal)
        button.setImage(UIImage(named: "fishes.jpeg"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    func initLabel() {
        label = UILabel()
        label.text = "Fishes"
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    func addHierarchy() {
        addSubview(label)
        addSubview(button)
    }
    
    func activateConstraints() {
        NSLayoutConstraint.activate([
            
            label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            button.topAnchor.constraint(equalTo: label.topAnchor, constant: 10),
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
        ])
    }
}
