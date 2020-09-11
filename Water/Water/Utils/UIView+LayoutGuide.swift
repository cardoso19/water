//
//  UIView+LayoutGuide.swift
//  Water
//
//  Created by Matheus Cardoso Kuhn on 10/09/20.
//  Copyright © 2020 Matheus Kuhn. All rights reserved.
//

import UIKit

extension UIView {
    var compatibleLayoutGuide: UILayoutGuide {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide
        } else {
            return self.layoutMarginsGuide
        }
    }
}
