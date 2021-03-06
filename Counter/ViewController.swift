//
//  ViewController.swift
//  Counter
//
//  Created by student on 06.03.2021.
//

import UIKit

class ViewController: UIViewController {
    private var label = UILabel()
    private var tapButton = UIButton()
    private var resetButton = UIButton()
    private var counter = 0{
        didSet{
            label.text = counter.description
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Counter"
        view.backgroundColor = .orange
        
        resetButton.setTitleColor(.blue, for: .normal)
        resetButton.setTitle("Reset", for: .normal)
        resetButton.addTarget(self, action: #selector(resetAction), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: resetButton)
        
        view.addSubview(label)
        view.addSubview(tapButton)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        tapButton.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = counter.description
        label.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.medium)
        label.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.medium)
        
        tapButton.setTitle("Tap", for: .normal)
        tapButton.backgroundColor = .white
        tapButton.setTitleColor(.blue, for: .normal)
        tapButton.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tapButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50)
        ])
    }
    
    @objc func tapAction(){
        counter += 1
    }
    
    @objc func resetAction(){
        counter = 0
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
}

