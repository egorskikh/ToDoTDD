//
//  LocationTest.swift
//  ToDoTests
//
//  Created by Егор Горских on 02.02.2021.
//

import XCTest
import CoreLocation
@testable import ToDo

class LocationTest: XCTestCase {
    
    override func setUpWithError() throws {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitLocationName() {
        let location = Location(name: "Foo")
        XCTAssertEqual(location.name, "Foo")
    }
    
    func testInitSetsCoordinates() {
        let coordinates = CLLocationCoordinate2D(
            latitude: 1,
            longitude: 2)
        
        let location = Location(name: "Foo",
                                coordinates: coordinates)
    
        XCTAssertEqual(location.coordinates?.latitude, coordinates.latitude)
        
        XCTAssertEqual(location.coordinates?.longitude, coordinates.longitude)
        
    }
    
    
}
