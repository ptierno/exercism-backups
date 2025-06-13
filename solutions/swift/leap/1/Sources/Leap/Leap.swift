//Solution goes in Sources
import Foundation

class Year {
    let isLeapYear: Bool
    
    init(calendarYear: Int) {
        if calendarYear % 4 == 0 {
            if calendarYear % 100 == 0 {
                if calendarYear % 400 == 0 {
                    isLeapYear = true
                } else {
                    isLeapYear = false
                }
                
            } else {
                isLeapYear = true
            }
        } else {
            isLeapYear = false
        }
    }
}
