//
//  DetailsCoordinator.swift
//  CoordinatorApp
//
//  Created by Douglas Nunes on 04/04/22.
//

import Foundation
import UIKit

class DetailCoordinator: Coordinator {
	
	private(set) var childCoordinators: [Coordinator] = []
	
	private let navigationController: UINavigationController
	
	var parentCoordinator: HomeCoordinator?
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		
		let viewController = DetailsViewController()
		
		let viewModel = DetailsViewModel()
		viewModel.coordinator = self
		viewController.viewModel = viewModel
		
//		navigationController.present(viewController, animated: true)
		
		navigationController.pushViewController(viewController, animated: true)
		
	}
	
	
	
}
