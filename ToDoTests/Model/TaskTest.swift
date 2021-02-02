//
//  TaskTest.swift
//  ToDoTests
//
//  Created by Егор Горских on 01.02.2021.
//

import XCTest
@testable import ToDo

class TaskTest: XCTestCase {
    
    
    func testInitTaskWhithTitle() {
        
        let task = Task(title: "Foo") // Foo Bar Baz
        
        XCTAssertNotNil(task)
    }
    
    func testInitTaskWhithTitleAndDescription() {
        
        let task = Task(title: "Foo", description: "Bar") // Foo Bar Baz
        
        XCTAssertNotNil(task)
    }
    
    func testWhenGivenTitleSetsTitle() {
        let task = Task(title: "Foo")
        XCTAssertEqual(task.title, "Foo")
        }
    
    func testWhenGivenDescriptionSetsDescription() {
        
        let task = Task(title: "Foo", description: "Bar")
    
        XCTAssertTrue(task.description == "Bar")
 
    }
    
    func testTaskInitWhithDate() {
        
        let task = Task(title: "Foo")
        
        XCTAssertNotNil(task.date)
    }
    
    func testWhenGivenLocationSetsLocation() {
        
        let location = Location(name: "Foo")
        
        let task = Task(title: "Bar",
                        description: "Baz",
                        location: location)
        
        XCTAssertEqual(location, task.location)
        
    }
    
    
}
