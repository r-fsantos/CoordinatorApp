//
//  HomeViewModel.swift
//  CoordinatorApp
//
//  Created by Douglas Nunes on 04/04/22.
//

import Foundation

class HomeViewModel {
	
	let title = "Home"
	
	var coordinator: HomeCoordinator?
	
	func tapDetails() {
		
		print("Cliquei no botão")
		
		coordinator?.detail()
	}
}
