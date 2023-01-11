//
//  UniTest-Practice-UICases.swift
//  UnitTest-PracticeUITests
//
//  Created by Kamrul Hasan on 11/1/23.
//

import XCTest

class UnitTest_Practice_UICases: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        app = XCUIApplication()
        app.launch()
        
    }

    func testFlow() {
        let nameTextField = app.textFields["nameTextField"]
        nameTextField.tap()
        nameTextField.typeText("Wash the car\n")
        
        let addTaskButton = app.buttons["addTaskButton"]
        addTaskButton.tap()
        
        let taskCount = app.staticTexts.count// .tables.cells.count// .children(matching: .staticText).count //.children(matching: .cell).count
        //let taskList = app.tables["taskListTable"]
        //let taskCount = taskList.staticTexts.count// .children(matching: .cell).count
        
        //app.state["tasks"]
        
        XCTAssertEqual(1, taskCount)
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
