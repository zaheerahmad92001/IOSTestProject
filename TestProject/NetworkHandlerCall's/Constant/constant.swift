//
//  constant.swift
//  CarInsurance
//
//  Created by Apple on 7/3/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit

class Constant {
    
    static var MainUrl : String { return "https://api.tvmaze.com/shows/1/" 
    }
    
   
    struct activitySize {
        static let size =  CGSize(width: 40, height: 40)
    }
    
    enum loaderMessages : String {
        case loadingMessage = "Loading..."
    }
    
    //AuthPArt
    struct URLs {
       static let episodes = "episodes"
       
        
    }
    
    
    struct NetworkErrorType {
        static let timeOutInterval: TimeInterval = 20
        
        static let error = "Error"
        static let internetNotAvailable = "Internet Not Available. Please Try Again"
        static let pleaseTryAgain = "Please Try Again"
        
        static let generic = 4000
        static let genericError = "Please Try Again."
        
        static let serverErrorCode = 5000
        static let serverNotAvailable = "Server Not Available"
        static let serverError = "Server Not Available, Please Try Later."
        
        static let timout = 4001
        static let timoutError = "Network Time Out, Please Try Again."
        
        static let login = 4003
        static let loginMessage = "Unable To Login"
        static let loginError = "Please Try Again."
        
        static let internet = 4004
        static let internetError = "Internet Not Available. Please Try Again"
    }
    
    struct NetworkSuccess {
        static let statusOK = 200
    }
    
}

let NOTIFICATIONS_UPDATED = "NOTIFICATIONS_UPDATED"
