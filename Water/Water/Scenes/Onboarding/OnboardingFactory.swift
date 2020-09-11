//
//  OnboardingFactory.swift
//  Water
//
//  Created by Matheus Cardoso Kuhn on 10/09/20.
//  Copyright © 2020 Matheus Kuhn. All rights reserved.
//

import UIKit

enum OnboardingFactory {
    static func make() -> UIViewController {
        let viewModel = OnboardingViewModel()
        let controller = OnboardingViewController(viewModel: viewModel)
        viewModel.viewController = controller
        let navigationController = UINavigationController(rootViewController: controller)
        return navigationController
    }
}
