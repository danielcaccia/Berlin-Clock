//
//  Berlin_ClockTests.swift
//  Berlin-ClockTests
//
//  Created by 2022-dev2-004 on 22/01/2023.
//

import XCTest

@testable import Berlin_Clock

class Berlin_ClockTests: XCTestCase {
    //MARK: - Properties
    
    var date: Date?

    //MARK: - Set Up
    
    override func setUp() async throws {
        let now = "12:34:56"
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "HH:mm:ss"
        
        date = dateFormatter.date(from:now)!
    }
    
    //MARK: - Tests
    
    func testSingleMinuteBlock() throws {
        let viewModel = BerlinClockViewModel()
        viewModel.generateClock(date!)
        
        let sut = viewModel.singleMinuteBlocks
        let expectedNumberOfLitBlocks = 4
        
        XCTAssertEqual(sut, expectedNumberOfLitBlocks)
    }

    func testFiveMinuteBlock() throws {
        let viewModel = BerlinClockViewModel()
        viewModel.generateClock(date!)
        
        let sut = viewModel.fiveMinuteBlocks
        let expectedNumberOfLitBlocks = 6
        
        XCTAssertEqual(sut, expectedNumberOfLitBlocks)
    }
    
    func testSingleHourBlock() throws {
        let viewModel = BerlinClockViewModel()
        viewModel.generateClock(date!)
        
        let sut = viewModel.singleHourBlocks
        let expectedNumberOfLitBlocks = 2
        
        XCTAssertEqual(sut, expectedNumberOfLitBlocks)
    }
    
    func testFiveHourBlock() throws {
        let viewModel = BerlinClockViewModel()
        viewModel.generateClock(date!)
        
        let sut = viewModel.fiveHoursBlocks
        let expectedNumberOfLitBlocks = 2
        
        XCTAssertEqual(sut, expectedNumberOfLitBlocks)
    }

}
