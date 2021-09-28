//
//  Emails.swift
//  DependencyInjection
//
//  Created by Adilson Junior on 27/09/21.
//

import UIKit

class Gmail: EmailAccount {
    var username: String {
        return "Adilson"
    }
    
    var domain: String {
        return "gmail.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
}

class ICloud: EmailAccount {
    var username: String {
        return "Larissa"
    }
    
    var domain: String {
        return "icloud.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
}

class Outlook: EmailAccount {
    var username: String {
        return "John"
    }
    
    var domain: String {
        return "outlook.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
}
