//
//  Questions.swift
//  Quizzler
//
//  Created by Uulgelsin Usubalieva on 29/6/22.
//

import Foundation


enum Questions{
    case one
    case two
    case three
    case four
    case five
    
    var title: String{
        switch self{
        case .one:
            return "Is Bishkek hot in  summer?"
        case .two:
            return "Harry Styles from BTS boys band"
        case .three:
            return "Saint-Petersburg is capital of Russia"
        case .four:
            return "Is abortion illegal in USA?"
        case .five:
            return "Beijing is capital of China"
            
        }
    }
    var answer: String{
        switch self{
        case .one:
            return "Yes"
        case .two:
            return "No"
        case .three:
            return "No"
        case .four:
            return "Yes"
        case .five:
            return "Yes"
        }
    }
    var correctAnswers: String{
        switch self{
    case .one:
        return "1"
    case .two:
        return "2"
    case .three:
        return "3"
    case .four:
        return "4"
    case .five:
        return "5"
    }
}
    var advice: String{
        switch self{
        case .one:
            return "Mmm. Try one more time!"
        case .two:
            return "You can do better!"
        case .three:
            return "Not bad."
        case .four:
            return "Good!"
        case .five:
            return "You are genius"
        }
    }
}
