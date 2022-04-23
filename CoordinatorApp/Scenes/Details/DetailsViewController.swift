//
//  DetailsViewController.swift
//  CoordinatorApp
//
//  Created by Douglas Nunes on 04/04/22.
//

import UIKit

class DetailsViewController: UIViewController {

	var viewModel: DetailsViewModel?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		view.backgroundColor = .red

		title = viewModel?.title
    }

}
