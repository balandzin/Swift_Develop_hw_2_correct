//
//  ViewController.swift
//  hw_2
//
//  Created by Антон Баландин on 8.08.23.
//

import UIKit

class ViewController: UIViewController {

    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        button.backgroundColor = .blue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button.addTarget(self, action: #selector(tap1), for: .touchUpInside)
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(button)
        setupConstraints()
    }
    
    private func setupConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
                       
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.size.height/1.4),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
    }
}

private extension ViewController {
    
    @objc func tap1() {
        
        let tabBarController = UITabBarController()
        let viewController1 = UINavigationController(rootViewController: FriendsViewController())
        let viewController2 = UINavigationController(rootViewController: GroupCell())
        let viewController3 = UINavigationController(rootViewController: ViewController3())
        
        viewController1.tabBarItem.title = "Friends"
        viewController2.tabBarItem.title = "Groups"
        viewController3.tabBarItem.title = "Photos"
        
        let controllers = [viewController1, viewController2, viewController3]
        for element in controllers {
            element.tabBarItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 25.0, weight: .regular)], for: .normal)
        }
        tabBarController.viewControllers = controllers
        navigationController?.pushViewController(tabBarController, animated: true)
        
        
        
    }
}


