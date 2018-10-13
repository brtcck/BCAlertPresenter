//
//  BCAlertPresenter.swift
//
//  Created by Berat Çiçek on 13.10.2018.
//  Copyright © 2018 Berat Çiçek. All rights reserved.
//

import UIKit

/// Alert Presentation

struct BCAlertPresentation {

    /// Alert title
    let title: String?

    /// Alert message
    let message: String?

    /// Alert actions
    let actions: [UIAlertAction]

    // MARK: - Initializers

    init(title: String? = nil,
         message: String? = nil,
         actions: [UIAlertAction]
        ) {

        self.title = title
        self.message = message
        self.actions = actions
    }
}

/// A class that allows you to show a alert on the screen

class BCAlertPresenter {

    /// Completion Closure
    typealias Completion = (() -> Swift.Void)

    /// Private Variable Declarations

    private var presentation: BCAlertPresentation?

    /// Public Variable Declarations

    /// Alert title
    var title: String? {

        return presentation?.title
    }

    /// Alert message
    var message: String? {

        return presentation?.message
    }

    /// Alert actions
    var actions: [UIAlertAction]? {

        return presentation?.actions
    }

    /// Methods

    /// Show alert view
    ///
    /// - Parameters:
    ///   - from: View controller instance
    ///   - presentation: Alert presentation
    ///   - animated: Animated value as `Bool`
    ///   - handler: Block that called when alert appear
    func showAlert(
        from: UIViewController,
        presentation: BCAlertPresentation,
        animated: Bool = true,
        handler: Completion? = nil
        ) {

        self.presentation = presentation

        let alertController = UIAlertController(
            title: presentation.title,
            message: presentation.message,
            preferredStyle: .alert
        )

        presentation.actions.forEach { alertAction in

            alertController.addAction(alertAction)
        }

        from.present(alertController, animated: animated, completion: handler)
    }
}
