//
//  BCAlertPresenterExampleTests.swift
//  BCAlertPresenterExampleTests
//
//  Created by Berat Çiçek on 13.10.2018.
//  Copyright © 2018 Berat Çiçek. All rights reserved.
//

import XCTest
@testable import BCAlertPresenterExample

class BCAlertPresenterExampleTests: XCTestCase {

    let alertPresentation = BCAlertPresentation.init(
        title: "Hello!",
        message: "How are you?",
        actions: [
            UIAlertAction(title: "Action1", style: .default, handler: nil),
            UIAlertAction(title: "Action2", style: .default, handler: nil),
            UIAlertAction(title: "Action3", style: .default, handler: nil)
        ]
    )
    let alertPresenter = BCAlertPresenter()

    override func setUp() {

        super.setUp()
        alertPresenter.showAlert(from: UIViewController(), presentation: alertPresentation)
    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testAlertTitleIsEqualToPresentationTitle() {

        XCTAssertEqual(alertPresenter.title ?? "", alertPresentation.title ?? "")
    }

    func testAlertMessageIsEqualToPresentationMessage() {

        XCTAssertEqual(alertPresenter.message ?? "", alertPresentation.message ?? "")
    }

    func testAlertActionsCountIsEqualToPresentationActionsCount() {

        XCTAssertEqual(alertPresenter.actions?.count ?? 0, alertPresentation.actions.count)
    }

    func testAlertFirstActionTitleIsEqualToPresentationFirstActionTitle() {

        XCTAssertEqual(
            alertPresenter.actions?.first?.title ?? "",
            alertPresentation.actions.first?.title ?? ""
        )
    }

    func testAlertLastActionTitleIsEqualToPresentationLastActionTitle() {

        XCTAssertEqual(
            alertPresenter.actions?.last?.title ?? "",
            alertPresentation.actions.last?.title ?? ""
        )
    }

    func testAlertActionCount() {

        XCTAssertEqual(alertPresenter.actions?.count ?? 0, 3)
    }

    func testAlertTitle() {

        XCTAssertEqual(alertPresenter.title ?? "", "Hello!")
    }

    func testAlertMessage() {

        XCTAssertEqual(alertPresenter.message ?? "", "How are you?")
    }
}
