//
//  Coordinator.swift
//  CoordinatorApp
//
//  Created by Douglas Nunes on 04/04/22.
//

import Foundation

protocol Coordinator: AnyObject {
	
	var childCoordinators: [Coordinator] { get }
	
	func start()
	
}
