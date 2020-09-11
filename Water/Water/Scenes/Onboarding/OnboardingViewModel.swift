//
//  OnboardingViewModel.swift
//  Water
//
//  Created by Matheus Cardoso Kuhn on 10/09/20.
//  Copyright © 2020 Matheus Kuhn. All rights reserved.
//

import Foundation

protocol OnboardingViewModeling {
}

final class OnboardingViewModel {
    weak var viewController: OnboardingDisplay?
}

// MARK: - OnboardingViewModeling
extension OnboardingViewModel: OnboardingViewModeling {
}
