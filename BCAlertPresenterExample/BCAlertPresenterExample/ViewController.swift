//
//  ViewController.swift
//  BCAlertPresenterExample
//
//  Created by Berat Çiçek on 13.10.2018.
//  Copyright © 2018 Berat Çiçek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let alertPresenter = BCAlertPresenter()
}

// MARK: - Actions

extension ViewController {

    @IBAction func didTapPressButton(_ sender: UIButton) {

        /// Okay button handler
        let okActionHandler = { (action: UIAlertAction) in

            print("OK button tapped!")
        }

        /// Okay action
        let okAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: okActionHandler
        )

        /// Cancel button handler
        let cancelActionHandler = { (action: UIAlertAction) in

            print("Cancel button tapped!")
        }

        /// Cancel action
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: cancelActionHandler
        )

        /// Alert presentation
        let alertPresentation = BCAlertPresentation(
            title: "Greeting",
            message: "Hi there, how are you today?",
            actions: [okAction, cancelAction]
        )

        alertPresenter.showAlert(
            from: self,
            presentation: alertPresentation
        )
    }
}

