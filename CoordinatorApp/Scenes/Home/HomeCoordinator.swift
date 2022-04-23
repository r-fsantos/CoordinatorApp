//
//  HomeCoordinator.swift
//  CoordinatorApp
//
//  Created by Douglas Nunes on 04/04/22.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
	
	private(set) var childCoordinators: [Coordinator] = []
	
	private let navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		
		let homeViewController = HomeViewController()
		let viewModel = HomeViewModel()
		viewModel.coordinator = self
		homeViewController.viewModel = viewModel
		homeViewController.view.backgroundColor = .lightGray
		
		navigationController.setViewControllers([homeViewController], animated: true)
	}
	
	func detail() {
		
		let detailCoordinator = DetailCoordinator(navigationController: navigationController)
		detailCoordinator.parentCoordinator = self
		childCoordinators.append(detailCoordinator)
		
		detailCoordinator.start()
	}
}
