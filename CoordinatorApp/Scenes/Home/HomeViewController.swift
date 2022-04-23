//
//  ViewController.swift
//  CoordinatorApp
//
//  Created by Douglas Nunes on 04/04/22.
//

import UIKit

class HomeViewController: UIViewController {

	var viewModel: HomeViewModel?
	
	lazy var button: UIButton = {
		let button = UIButton(type: .close)
		button.translatesAutoresizingMaskIntoConstraints = false
		button.addTarget(self, action: #selector(getDatails), for: .touchUpInside)
		return button
	}()
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		navigationController?.navigationBar.prefersLargeTitles = true
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		title = viewModel?.title
		
		configureUI()
	}
	
	@objc func getDatails() {
		viewModel?.tapDetails()
	}
	
	private func configureUI() {
		view.addSubview(button)
		
		NSLayoutConstraint.activate([
			button.heightAnchor.constraint(equalToConstant: 45),
			button.widthAnchor.constraint(equalToConstant: 45),
			button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
		])
		
	}


}

